---
description: Evaluates user-facing text for accessibility issues and ensures it works for all users including those with disabilities
allowed-tools: Read, Grep
---

# Check Accessibility

Evaluates user-facing text for accessibility issues and ensures it works for all users including those with disabilities.

## Instructions

When this command is invoked:

1. **Get the text and context**:
   - What text to check?
   - Where does it appear? (link, button, label, error, alt text, etc.)
   - What's the surrounding context?

2. **Apply accessibility checks** from `../skills/ux-writing-helper/principles/accessibility.md`:

   **Plain Language Check:**
   - Reading level (target 8th grade or below)
   - Sentence length (<25 words)
   - Simple, common words (not fancy synonyms)
   - No idioms or cultural references
   - Technical terms defined

   **Inclusive Language Check:**
   - Gender-neutral (use "they/them")
   - No ableist language ("blind to", "crazy", "lame")
   - No assumptions about users
   - Person-first language when appropriate

   **Screen Reader Check:**
   - Link text descriptive out of context (not "click here")
   - No reliance solely on color
   - No unnecessary directional language ("above", "below")
   - Clear, semantic structure

   **International Check:**
   - No region-specific references
   - Clear date/time formats
   - No idioms or slang
   - Text expansion tolerance (30-50% for translation)

3. **Identify issues**:
   - Mark as ✓ (accessible), ⚠️ (could improve), or ✗ (accessibility blocker)
   - Explain each issue's impact on users
   - Prioritize by severity (critical, high, medium, low)

4. **Provide specific improvements**:
   - Show before/after for each issue
   - Explain how the change improves accessibility
   - Reference WCAG guidelines when relevant
   - Suggest tools for testing (Hemingway Editor, screen readers)

5. **Consider multiple user groups**:
   - Screen reader users (blind/low vision)
   - Cognitive disabilities (plain language)
   - Non-native English speakers (simple language, no idioms)
   - Deaf users (clear, visual language)
   - International audiences (no regional references)

## Example Usage

```
/ux-writing-helper:check-accessibility

User: "Click here to learn more about our privacy policy"

Claude: Let me check this link text for accessibility issues:

**Link Text:** "Click here to learn more about our privacy policy"

**Accessibility Issues Found:**

**✗ Critical - Not Screen Reader Friendly**
Issue: "Click here" is not descriptive out of context
Impact: Screen reader users tab through links and hear "Click here, Click here, Click here" without knowing where each leads
Fix: Make link text describe the destination

**⚠️ Medium - Redundant Language**
Issue: "Click" is redundant (users know links are clickable)
Impact: Extra words that don't add meaning
Fix: Remove "Click"

**⚠️ Medium - Wordy**
Issue: 10 words when 3 would work
Impact: Harder to scan, especially for users with cognitive disabilities
Fix: Simplify

**Improved Version:**
"Read our privacy policy" or "Privacy policy"

**Why This Is Better:**
✓ Descriptive out of context (screen readers)
✓ Concise (3 words vs 10)
✓ No redundant "click"
✓ Clear purpose
✓ Easier for cognitive processing

**Reading Level:** Original: 6th grade ✓ | Improved: 4th grade ✓

**Additional Recommendations:**
- Test with a screen reader (VoiceOver on Mac, NVDA on Windows)
- Ensure link has sufficient color contrast (4.5:1 ratio minimum)
- Make sure link is keyboard accessible (tab navigation)
```

## Output Format

Provide:
1. Accessibility checklist results
2. Issues found (categorized by severity)
3. Specific improvements with before/after
4. Impact explanation (who is affected and how)
5. Testing recommendations
6. WCAG compliance notes when relevant

## Reference Guidelines

Use these standards:
- **WCAG 2.1 Level AA** (minimum for accessibility)
- **8th-grade reading level** (general audiences)
- **Plain Language Guidelines** (plainlanguage.gov)
- **Inclusive language standards** (person-first, gender-neutral)
