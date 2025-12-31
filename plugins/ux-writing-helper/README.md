# UX Writing Helper

A comprehensive skill for Claude Code that helps you write clear, empathetic, user-focused text using industry UX writing best practices.

## Overview

This skill enhances Claude's ability to:
- Write and improve user-facing text (buttons, labels, error messages, etc.)
- Review existing copy against UX writing best practices
- Apply systematic checklists for quality assurance
- Follow tone guidelines for different contexts
- Ensure accessibility and inclusive language

## Features

- **Review Mode**: Audit existing text against a 6-step checklist
- **Improvement Mode**: Rewrite text following UX principles
- **Comprehensive Guidelines**: Covering clarity, brevity, tone, accessibility
- **Real Examples**: Before/after examples and patterns
- **External Resources**: Links to Google, Apple, Microsoft style guides

## Installation

### Install from the Plugin Marketplace

1. Add the marketplace (one-time setup):
   ```bash
   /plugin marketplace add mattbutlerengineering/claude-plugins
   ```

2. Install the plugin:
   ```bash
   /plugin install ux-writing-helper
   ```

   Or use the interactive UI:
   ```bash
   /plugin
   ```
   Navigate to the Discover tab, find "UX Writing Helper", and click Install.

3. Choose installation scope:
   - **User** (recommended): Available across all your projects
   - **Project**: Shared with your team via version control
   - **Local**: Personal to one project only

### Manual Installation

If you prefer to install manually:

```bash
# Clone the repository
git clone https://github.com/mattbutlerengineering/claude-plugins.git

# Install as a local plugin
/plugin install ./claude-plugins/plugins/ux-writing-helper
```

## File Structure

```
ux-writing-helper/                    # Plugin root
├── .claude-plugin/
│   └── plugin.json                   # Plugin manifest
├── commands/
│   ├── review.md                     # /ux-writing-helper:review
│   ├── improve.md                    # /ux-writing-helper:improve
│   ├── check-tone.md                 # /ux-writing-helper:check-tone
│   └── check-accessibility.md        # /ux-writing-helper:check-accessibility
├── skills/
│   └── ux-writing-helper/            # Main skill (auto-activated)
│       ├── SKILL.md                  # Skill entry point
│       ├── principles/
│       │   ├── core-principles.md    # Clarity, brevity, actionability
│       │   ├── tone-guidelines.md    # Friendly, professional, helpful
│       │   ├── capitalization.md     # Sentence case, title case
│       │   └── accessibility.md      # Plain language, inclusive language
│       ├── checklists/
│       │   ├── review-checklist.md   # 6-step systematic audit
│       │   └── pre-publish-checklist.md
│       ├── examples/
│       │   ├── before-after.md       # Real improvements
│       │   ├── ui-patterns.md        # Common UI copy patterns
│       │   ├── error-messages.md     # Error message templates
│       │   └── onboarding.md         # Welcome & tutorial patterns
│       └── references/
│           ├── external-resources.md # Links to style guides
│           └── glossary.md           # UX writing terms
├── README.md                          # This file
└── LICENSE                            # MIT License
```

## Usage

The UX Writing Helper provides two ways to get help:

1. **Automatic Skill Activation**: Claude automatically uses the skill when you ask about UX writing
2. **Slash Commands**: Explicitly invoke specific functions with commands

### Available Commands

Use these slash commands for explicit, focused help:

#### `/ux-writing-helper:review`
Reviews existing text using a 6-step systematic checklist.

**Usage**: `/ux-writing-helper:review`
```
/ux-writing-helper:review
"Click here to submit your form"
```

**What it does**:
- Applies 6-step review checklist (clarity, brevity, tone, actionability, accessibility, consistency)
- Identifies issues by severity
- Provides specific improvements
- Explains reasoning

---

#### `/ux-writing-helper:improve`
Rewrites or improves text using UX best practices.

**Usage**: `/ux-writing-helper:improve`
```
/ux-writing-helper:improve
Error message for when file upload fails
```

**What it does**:
- Gathers context about where text appears
- Applies UX principles (clarity, brevity, tone, etc.)
- Provides multiple options with different tones
- Explains improvements

---

#### `/ux-writing-helper:check-tone`
Analyzes tone and verifies it's appropriate for the context.

**Usage**: `/ux-writing-helper:check-tone`
```
/ux-writing-helper:check-tone
"Oops! Something broke! Try again maybe?"
Context: Payment error
```

**What it does**:
- Identifies current tone (friendly, professional, casual, etc.)
- Determines appropriate tone for context
- Assesses if tone matches needs
- Provides tone-adjusted versions

---

#### `/ux-writing-helper:check-accessibility`
Evaluates text for accessibility issues.

**Usage**: `/ux-writing-helper:check-accessibility`
```
/ux-writing-helper:check-accessibility
"Click here to learn more"
```

**What it does**:
- Checks plain language (reading level, sentence length)
- Verifies inclusive language (gender-neutral, no ableist terms)
- Tests screen reader compatibility (descriptive links, no color-only)
- Checks internationalization (no regional references, idioms)
- Provides WCAG compliance notes

---

### Automatic Skill Usage

Once installed, Claude will automatically use this skill when you ask for help with user-facing text.

### Review Existing Text

Ask Claude to review your copy:

**Example**:
```
Can you review this button text: "Click OK to proceed to the next page"
```

Claude will apply the 6-step checklist and provide:
- Issues found
- Specific improvements
- Reasoning behind changes

---

### Improve or Write New Text

Ask Claude to write or rewrite copy:

**Example**:
```
I need an error message for when a password is incorrect
```

Claude will:
- Ask for context (where it appears, who sees it)
- Apply UX principles
- Provide options with explanations

---

### Get Guidance on Specific Topics

Ask about specific UX writing topics:

**Examples**:
```
What's the best way to write error messages?
Should I use sentence case or title case for buttons?
How do I write accessible copy for screen readers?
What tone should I use for onboarding?
```

Claude will reference the appropriate principle files and provide guidance.

---

## Example Conversations

### Example 1: Reviewing Button Text

**You**:
```
Review this button: "Submit form"
```

**Claude** (using UX Writing Helper):
```
Let me review this button text against UX writing principles:

**Analysis**:
- Clarity: ✓ Clear action
- Brevity: ✓ Concise (2 words)
- Actionability: ⚠️ Could be more specific
- Tone: ✓ Appropriate
- Consistency: ? (depends on your other buttons)

**Suggestion**:
Instead of "Submit form", be more specific about what happens:
- "Create account" (if it's a signup form)
- "Send message" (if it's a contact form)
- "Save changes" (if it's a settings form)

**Why**: Users are more confident when they know exactly what will happen.
```

---

### Example 2: Writing an Error Message

**You**:
```
I need an error message for when someone tries to upload a file that's too large
```

**Claude** (using UX Writing Helper):
```
I'll create an error message following the formula: [What happened] + [Why] + [What to do]

**Recommended message**:
"This file is too large. Maximum size is 5 MB. Try compressing the file or uploading a smaller one."

**Why this works**:
- Clear about what's wrong (file too large)
- Specific constraint (5 MB limit)
- Actionable next steps (compress or upload smaller file)
- Calm, helpful tone (not blaming)

**Alternative (shorter)**:
"File is too large. Maximum size is 5 MB."

Use the longer version if you have space, as it's more helpful.
```

---

### Example 3: Onboarding Copy

**You**:
```
I need a welcome message for new users signing up for a project management app
```

**Claude** (using UX Writing Helper):
```
For a project management app onboarding, I'd use a friendly, encouraging tone:

**Welcome message**:
"Welcome! Let's set up your workspace—it takes about 2 minutes."

**Why this works**:
- Friendly greeting
- Sets time expectation (2 minutes)
- Uses "we" to feel collaborative
- Focuses on value ("your workspace")

**Follow-up steps** could be:
1. "Create your profile"
2. "Invite your team"
3. "Create your first project"
4. "You're all set!"

Each step should have a brief description explaining the value.
```

---

## Core Principles

This skill teaches Claude to write using these core UX principles:

### 1. Clarity
- Use active voice
- Use second person (you/your)
- Avoid jargon
- One idea per sentence

### 2. Brevity
- Remove unnecessary words
- Use contractions when appropriate
- Keep it concise

### 3. Actionability
- Start CTAs with verbs
- Be specific about outcomes
- Provide next steps in errors

### 4. Tone
- Match context (friendly for onboarding, calm for errors)
- Be empathetic, not blaming
- Consistent with brand voice

### 5. Accessibility
- Plain language (8th-grade reading level)
- Gender-neutral and inclusive
- Screen reader friendly

### 6. Consistency
- Same terms for same concepts
- Consistent capitalization
- Follow platform conventions

## Resources Included

### Style Guides Referenced
- Google Material Design Writing Guide
- Apple Human Interface Guidelines
- Microsoft Writing Style Guide
- Mailchimp Content Style Guide

### Tools Recommended
- Hemingway Editor (readability)
- Grammarly (grammar and tone)
- WAVE (accessibility)

### Books Referenced
- "Strategic Writing for UX" by Torrey Podmajersky
- "Microcopy: The Complete Guide" by Kinneret Yifrah
- "Conversational Design" by Erika Hall

## Customization

You can customize this skill for your product:

1. **Edit tone guidelines** in `principles/tone-guidelines.md` to match your brand voice
2. **Add your terminology** to create a product-specific glossary
3. **Update examples** in the `examples/` folder with your product's actual copy
4. **Add your style guide** links to `references/external-resources.md`

## Contributing

If you improve this skill or add new content:

1. Keep files focused and scannable
2. Use real examples
3. Explain the "why" behind principles
4. Update this README if you add new files

## License

MIT License - feel free to adapt and share!

## Support

For questions or issues:
- Check the [external resources](references/external-resources.md) for additional guidance
- Refer to the [glossary](references/glossary.md) for term definitions
- Review the [examples](examples/) for practical patterns

## Version

Version 1.0 - Initial release

## Changelog

### 1.0 (2024)
- Initial release with comprehensive UX writing guidelines
- 6-step review checklist
- Pre-publish checklist
- Extensive examples and patterns
- External resources and glossary
