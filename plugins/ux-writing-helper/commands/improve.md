---
description: Rewrites or improves user-facing text using UX writing best practices
allowed-tools: Read, Grep, Edit, Write
---

# Improve UX Copy

Rewrites or improves user-facing text using UX writing best practices.

## Instructions

When this command is invoked:

1. **Gather context**:
   - If text is provided, ask about context:
     - Where does this appear? (button, error, modal, tooltip, etc.)
     - Who sees it? (new users, returning users, admins, etc.)
     - What should users do next?
   - If no text provided, ask what they need:
     - What type of copy? (button, error message, welcome text, etc.)
     - What's the situation? (user action, system state, etc.)
     - What's the goal? (encourage action, explain error, guide user, etc.)

2. **Apply UX writing principles**:
   - **Clarity**: Active voice, second person, no jargon, one idea per sentence
   - **Brevity**: Remove unnecessary words, use contractions appropriately
   - **Actionability**: Start with verbs for CTAs, be specific about outcomes
   - **Tone**: Match context (friendly for onboarding, calm for errors, professional for serious actions)
   - **Accessibility**: Plain language, inclusive, screen reader friendly
   - **Consistency**: Use standard terminology

3. **Provide multiple options** when appropriate:
   - Show 2-3 variations with different tones or emphasis
   - Explain when to use each option
   - Indicate which is recommended and why

4. **Explain improvements**:
   - Compare before and after
   - Cite specific principles applied
   - Reference similar examples from the examples files
   - Show length reduction (e.g., "8 words → 2 words")

5. **Reference supporting resources**:
   - Link to relevant principles (tone-guidelines.md, core-principles.md, etc.)
   - Show similar patterns from examples files
   - Cite external style guides when helpful

## Example Usage

```
/ux-writing-helper:improve

User: "The file you tried to upload is not in the correct format"

Claude: Let me improve this error message using UX best practices:

**Current:** "The file you tried to upload is not in the correct format"
**Issues:** Wordy, doesn't explain what format is needed, no next steps

**Improved:** "This file type is not supported. Please upload a PDF or DOCX file."

**Why this is better:**
- Shorter (15 words → 11 words)
- Specific about what's wrong ("not supported" vs "not correct format")
- Tells users what formats ARE accepted
- Actionable ("Please upload...")
- Avoids passive voice ("you tried")

**Alternative (friendlier tone):**
"We can't open this file type. Try uploading a PDF or DOCX instead."

Use the first option for professional products, the second for consumer products.
```

## Output Format

Provide:
1. Original text (if provided)
2. Improved version(s) with variations
3. Specific improvements explained
4. When to use each variation
5. Principles applied
