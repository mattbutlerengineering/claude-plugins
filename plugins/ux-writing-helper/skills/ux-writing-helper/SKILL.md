---
name: ux-writing-helper
description: Improves user-facing text using UX best practices. Use when writing or reviewing UI copy, button labels, error messages, success messages, onboarding text, help documentation, form labels, tooltips, or any text users see in your product. Also use for auditing existing copy.
allowed-tools: Read, Grep, Edit, Write
---

# UX Writing Helper

This skill helps you write clear, empathetic, user-focused text following established UX writing principles. Use it for any text that users will see in your product.

## When to Use This Skill

Use this skill when you need to:
- Write or improve UI copy (buttons, labels, menus, navigation)
- Craft error messages or success messages
- Create onboarding flows or help documentation
- Write form labels, placeholders, or helper text
- Review and audit existing user-facing text
- Ensure consistent tone and voice across your product

## Two Modes of Operation

### Review Mode (Audit Existing Text)

When you want to evaluate existing text, I will:

1. **Apply the systematic review checklist** from [checklists/review-checklist.md](checklists/review-checklist.md)
2. **Check against core principles**: Clarity, brevity, actionability, tone, accessibility, consistency
3. **Provide specific improvements** with explanations
4. **Show before/after** examples when helpful

**How to use**: Share the text you want to review along with context about where it appears and who will see it.

### Improvement Mode (Write or Rewrite Text)

When you want to create or improve text, I will:

1. **Understand the context**: Who is the user? Where does this text appear? What action should they take?
2. **Apply UX principles**: Write clear, concise, actionable, empathetic text
3. **Match the appropriate tone**: Friendly, professional, or helpful based on context
4. **Follow best practices**: Capitalization, accessibility, platform conventions
5. **Provide options** when multiple approaches work

**How to use**: Describe what you need (e.g., "error message when password is wrong") and provide any context about your product's voice.

## Core Principles (Quick Reference)

### Clarity
- Use active voice and second person ("you/your")
- One idea per sentence
- Front-load important information
- Avoid jargon

### Brevity
- Remove unnecessary words
- Use contractions where appropriate
- Keep buttons under 80 characters
- Keep tooltips under 150 characters

### Actionability
- Start CTAs with verbs
- Be specific about what happens next
- Provide clear next steps in errors
- Use imperative mood for instructions

### Tone
- Be empathetic, especially in errors
- Avoid blame
- Match your product's voice
- Use positive framing when possible

### Accessibility
- Write at 8th-grade reading level
- Use gender-neutral language
- Write descriptive link text
- Avoid idioms and cultural references

### Consistency
- Use the same terms throughout
- Follow capitalization standards
- Match platform conventions

## Detailed Resources

For deeper guidance, I can reference these files:

**Principles**:
- [principles/core-principles.md](principles/core-principles.md) - Detailed UX writing principles
- [principles/tone-guidelines.md](principles/tone-guidelines.md) - When to use friendly, professional, or helpful tone
- [principles/capitalization.md](principles/capitalization.md) - Sentence case vs title case guidance
- [principles/accessibility.md](principles/accessibility.md) - Inclusive language and accessibility standards

**Checklists**:
- [checklists/review-checklist.md](checklists/review-checklist.md) - 6-step systematic audit process
- [checklists/pre-publish-checklist.md](checklists/pre-publish-checklist.md) - Final checks before shipping

**Examples**:
- [examples/before-after.md](examples/before-after.md) - Real examples of improved copy
- [examples/ui-patterns.md](examples/ui-patterns.md) - Common UI copy patterns (buttons, forms, navigation)
- [examples/error-messages.md](examples/error-messages.md) - Error message patterns and structure
- [examples/onboarding.md](examples/onboarding.md) - Welcome messages, tutorials, tooltips

**References**:
- [references/external-resources.md](references/external-resources.md) - Links to Google, Apple, Microsoft, Mailchimp style guides
- [references/glossary.md](references/glossary.md) - Common UX writing terms

## Example Usage

**User**: "I need help with this error message: 'Invalid credentials'"

**UX Writing Helper**: Let me improve that error message to be more helpful:

Before: "Invalid credentials"

After: "Your email or password is incorrect. Please try again or reset your password."

Why this is better:
- Specific about what's wrong (email or password)
- Empathetic tone ("your" instead of technical jargon)
- Provides next steps (try again or reset)
- Avoids blame

---

**User**: "Review this button text: 'Click here to continue to the next step'"

**UX Writing Helper**: Applying the review checklist:

Issues found:
- Too wordy (8 words when 2 would work)
- "Click here" is redundant (users know buttons are clickable)
- Not actionable enough

Improved: "Continue"

Or if you want to be more specific: "Save and continue"

This is:
- Concise (1-3 words vs 8)
- Action-focused
- Clear about what happens

## Getting Started

Simply describe the text you're working on and I'll help you make it better. Include context like:
- Where the text appears (button, modal, tooltip, etc.)
- Who will see it (new users, admins, all users)
- What you want users to do next
- Your product's general tone (if known)

I'll automatically apply UX best practices and explain my suggestions so you can learn and apply them yourself in the future.
