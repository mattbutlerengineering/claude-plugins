# Matt Butler's Claude Code Plugin Marketplace

A curated collection of productivity and writing plugins for [Claude Code](https://code.claude.com).

## Quick Start

### 1. Add This Marketplace

```bash
/plugin marketplace add mattbutlerengineering/claude-plugins
```

### 2. Browse and Install Plugins

**Option A: Interactive UI** (Recommended)
```bash
/plugin
```
Navigate to the Discover tab, browse available plugins, and click Install.

**Option B: Command Line**
```bash
/plugin install <plugin-name>
```

### 3. Choose Installation Scope

When installing, you'll be prompted to choose:
- **User** (default): Available across all your projects
- **Project**: Shared with your team via version control
- **Local**: Personal to one project only

---

## Available Plugins

### 🎨 UX Writing Helper

**Version**: 1.0.0
**Install**: `/plugin install ux-writing-helper`

Comprehensive UX writing assistant that helps you write clear, empathetic, user-focused copy using industry best practices.

**Features**:
- **Review Mode**: 6-step systematic audit of existing copy
- **Improvement Mode**: Rewrite text following UX principles
- **Comprehensive Guidelines**: Clarity, brevity, tone, actionability, accessibility, consistency
- **Real Examples**: 36 before/after improvements with explanations
- **Industry Standards**: References Google, Apple, Microsoft, Mailchimp style guides
- **Tone Guidelines**: Friendly, professional, helpful tones for different contexts
- **Capitalization Guide**: Sentence case vs title case standards
- **Accessibility**: Plain language, inclusive language, screen reader best practices

**Best for**: Product designers, UX writers, content designers, developers writing UI copy

**Learn more**: [UX Writing Helper Documentation](./plugins/ux-writing-helper/README.md)

---

## Coming Soon

More plugins are in development! Check back for updates or watch this repository.

---

## Plugin Development

Want to create your own plugin? This marketplace is open for contributions!

### Marketplace Structure

```
claude-plugins/
├── .claude-plugin/
│   └── marketplace.json              # Lists all available plugins
├── plugins/
│   ├── ux-writing-helper/
│   │   ├── .claude-plugin/
│   │   │   └── plugin.json           # Plugin manifest
│   │   ├── skills/                   # Skills for this plugin
│   │   ├── commands/                 # Optional slash commands
│   │   ├── README.md
│   │   └── LICENSE
│   └── [your-plugin]/                # Add your plugin here
├── README.md                          # This file
└── LICENSE
```

### Adding a New Plugin

1. Create a new directory in `plugins/` with your plugin name
2. Add required `.claude-plugin/plugin.json` manifest
3. Add your plugin components (skills, commands, agents, etc.)
4. Update `.claude-plugin/marketplace.json` to list your plugin
5. Submit a pull request

### Plugin Requirements

- `plugin.json` manifest with name, version, description
- README.md with installation and usage instructions
- LICENSE file (MIT preferred)
- Well-documented skills or commands
- YAML frontmatter in all skills and commands

### Plugin Development Resources

- [Claude Code Plugin Documentation](https://code.claude.com/docs/en/plugins) - Official plugin specification
- [Plugin-Dev Toolkit](https://github.com/anthropics/claude-code/tree/main/plugins/plugin-dev) - Expert guidance for plugin development
  - Install with: `/plugin install plugin-dev@claude-code-marketplace`
  - Includes skills for hooks, MCP integration, commands, agents, and more
  - Use `/plugin-dev:create-plugin` for guided plugin creation

---

## Manual Installation

If you prefer not to use the marketplace:

### Install from Git Repository

```bash
# Clone the repository
git clone https://github.com/mattbutlerengineering/claude-plugins.git

# Install a specific plugin
/plugin install ./claude-plugins/plugins/ux-writing-helper
```

### Install from Local Directory

```bash
/plugin install /path/to/plugins/ux-writing-helper
```

---

## Support & Contributions

### Report Issues

Found a bug or have a feature request? [Open an issue](https://github.com/mattbutlerengineering/claude-plugins/issues)

### Contribute

Contributions are welcome! Please:
1. Fork the repository
2. Create a feature branch
3. Add or improve plugins
4. Submit a pull request

### License

All plugins in this marketplace are licensed under the [MIT License](./LICENSE) unless otherwise specified.

---

## Resources

- [Claude Code Documentation](https://code.claude.com/docs)
- [Plugin Development Guide](https://code.claude.com/docs/en/plugins)
- [Skills Documentation](https://code.claude.com/docs/en/skills)
- [Claude Agent SDK](https://github.com/anthropics/anthropic-sdk-typescript)

---

## About

This marketplace is maintained by Matt Butler. The goal is to create high-quality, well-documented plugins that enhance productivity and improve the Claude Code experience.

**Repository**: https://github.com/mattbutlerengineering/claude-plugins
**Author**: [Matt Butler](https://github.com/mattbutlerengineering)

---

## Stay Updated

⭐ Star this repository to stay notified of new plugins and updates!
