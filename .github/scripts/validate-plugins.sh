#!/bin/bash
set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

ERRORS=0
WARNINGS=0

log_error() {
    echo -e "${RED}ERROR: $1${NC}"
    ERRORS=$((ERRORS + 1))
}

log_warning() {
    echo -e "${YELLOW}WARNING: $1${NC}"
    WARNINGS=$((WARNINGS + 1))
}

log_success() {
    echo -e "${GREEN}OK: $1${NC}"
}

log_info() {
    echo "INFO: $1"
}

# Validate semver format (basic check)
validate_semver() {
    local version="$1"
    if [[ ! "$version" =~ ^[0-9]+\.[0-9]+\.[0-9]+(-[a-zA-Z0-9.-]+)?(\+[a-zA-Z0-9.-]+)?$ ]]; then
        return 1
    fi
    return 0
}

# Validate JSON syntax
validate_json() {
    local file="$1"
    if ! jq empty "$file" 2>/dev/null; then
        log_error "Invalid JSON syntax in $file"
        return 1
    fi
    return 0
}

# Validate plugin.json required fields
validate_plugin_json() {
    local file="$1"
    local plugin_name="$2"

    # Check name field
    local name=$(jq -r '.name // empty' "$file")
    if [ -z "$name" ]; then
        log_error "[$plugin_name] Missing required field 'name' in plugin.json"
    elif [ "$name" != "$plugin_name" ]; then
        log_warning "[$plugin_name] Plugin name '$name' doesn't match directory name '$plugin_name'"
    fi

    # Check version field
    local version=$(jq -r '.version // empty' "$file")
    if [ -z "$version" ]; then
        log_error "[$plugin_name] Missing required field 'version' in plugin.json"
    elif ! validate_semver "$version"; then
        log_error "[$plugin_name] Version '$version' is not valid semver format"
    fi

    # Check description field
    local description=$(jq -r '.description // empty' "$file")
    if [ -z "$description" ]; then
        log_error "[$plugin_name] Missing required field 'description' in plugin.json"
    fi
}

# Validate plugin directory structure
validate_plugin_structure() {
    local plugin_dir="$1"
    local plugin_name=$(basename "$plugin_dir")

    log_info "Validating plugin: $plugin_name"

    # Check .claude-plugin/plugin.json exists
    local plugin_json="$plugin_dir/.claude-plugin/plugin.json"
    if [ ! -f "$plugin_json" ]; then
        log_error "[$plugin_name] Missing .claude-plugin/plugin.json"
    else
        if validate_json "$plugin_json"; then
            validate_plugin_json "$plugin_json" "$plugin_name"
            log_success "[$plugin_name] plugin.json is valid"
        fi
    fi

    # Check README.md exists
    if [ ! -f "$plugin_dir/README.md" ]; then
        log_error "[$plugin_name] Missing README.md"
    else
        log_success "[$plugin_name] README.md exists"
    fi

    # Check LICENSE exists
    if [ ! -f "$plugin_dir/LICENSE" ]; then
        log_error "[$plugin_name] Missing LICENSE"
    else
        log_success "[$plugin_name] LICENSE exists"
    fi

    # Check at least one of skills/ or commands/ exists
    local has_skills=false
    local has_commands=false

    if [ -d "$plugin_dir/skills" ] && [ "$(ls -A "$plugin_dir/skills" 2>/dev/null)" ]; then
        has_skills=true
        log_success "[$plugin_name] skills/ directory exists"
    fi

    if [ -d "$plugin_dir/commands" ] && [ "$(ls -A "$plugin_dir/commands" 2>/dev/null)" ]; then
        has_commands=true
        log_success "[$plugin_name] commands/ directory exists"
    fi

    if [ "$has_skills" = false ] && [ "$has_commands" = false ]; then
        log_error "[$plugin_name] Must have at least one of 'skills/' or 'commands/' directories with content"
    fi

    echo ""
}

# Validate marketplace.json
validate_marketplace() {
    local marketplace_file=".claude-plugin/marketplace.json"

    log_info "Validating marketplace.json"

    if [ ! -f "$marketplace_file" ]; then
        log_error "Missing marketplace.json at $marketplace_file"
        return 1
    fi

    if ! validate_json "$marketplace_file"; then
        return 1
    fi

    # Get list of plugins from marketplace
    local marketplace_plugins=$(jq -r '.plugins[].name' "$marketplace_file" 2>/dev/null)

    # Check each marketplace plugin exists
    for plugin in $marketplace_plugins; do
        if [ ! -d "plugins/$plugin" ]; then
            log_error "Marketplace references non-existent plugin: $plugin"
        else
            log_success "Marketplace plugin '$plugin' exists"
        fi
    done

    # Check each plugin directory is in marketplace
    for plugin_dir in plugins/*/; do
        if [ -d "$plugin_dir" ]; then
            local plugin_name=$(basename "$plugin_dir")
            if ! echo "$marketplace_plugins" | grep -q "^${plugin_name}$"; then
                log_warning "Plugin '$plugin_name' exists but is not listed in marketplace.json"
            fi
        fi
    done

    echo ""
}

# Main validation
main() {
    echo "========================================="
    echo "Claude Plugins Validation"
    echo "========================================="
    echo ""

    # Validate all JSON files first
    log_info "Checking JSON syntax..."
    while IFS= read -r -d '' json_file; do
        if ! validate_json "$json_file"; then
            # Error already logged
            :
        fi
    done < <(find . -name "*.json" -not -path "./.git/*" -print0)
    echo ""

    # Validate marketplace
    validate_marketplace

    # Validate each plugin
    for plugin_dir in plugins/*/; do
        if [ -d "$plugin_dir" ]; then
            validate_plugin_structure "$plugin_dir"
        fi
    done

    # Summary
    echo "========================================="
    echo "Validation Summary"
    echo "========================================="
    echo "Errors: $ERRORS"
    echo "Warnings: $WARNINGS"

    if [ $ERRORS -gt 0 ]; then
        echo -e "${RED}Validation failed with $ERRORS error(s)${NC}"
        exit 1
    else
        echo -e "${GREEN}Validation passed${NC}"
        exit 0
    fi
}

main
