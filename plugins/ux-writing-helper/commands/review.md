---
description: Reviews user-facing text against UX writing best practices using a systematic 6-step checklist
allowed-tools: Read, Grep, Edit
---

# Review UX Copy

Reviews user-facing text against UX writing best practices using a systematic 6-step checklist.

## Instructions

When this command is invoked:

1. **Ask the user for the text to review** if they haven't provided it yet
   - Ask where it appears (button, error message, form label, etc.)
   - Ask who will see it (new users, all users, admins, etc.)

2. **Apply the 6-step review checklist** from `../skills/ux-writing-helper/checklists/review-checklist.md`:
   - Step 1: Clarity Check
   - Step 2: Brevity Check
   - Step 3: Tone Check
   - Step 4: Actionability Check
   - Step 5: Accessibility Check
   - Step 6: Consistency Check

3. **Provide specific feedback** for each step:
   - Mark as ✓ (pass), ⚠️ (could improve), or ✗ (needs fix)
   - Explain issues found
   - Show specific improvements

4. **Summarize findings**:
   - List all issues by severity (High, Medium, Low)
   - Provide recommended changes with before/after examples
   - Explain reasoning using UX principles

5. **Reference supporting documentation** when helpful:
   - Link to relevant principle files
   - Show similar examples from examples files
   - Cite external style guides when appropriate

## Example Usage

```
/ux-writing-helper:review

User: "Click here to continue to the next page"

Claude: Let me review this button text using the UX writing checklist:

**Step 1: Clarity** ✓ Clear action
**Step 2: Brevity** ✗ Too wordy (8 words)
**Step 3: Tone** ✓ Appropriate
**Step 4: Actionability** ⚠️ Could be more specific
**Step 5: Accessibility** ✓ No issues
**Step 6: Consistency** ? (Need to check other buttons)

**Issues Found:**
- **High**: Redundant "Click here" (users know buttons are clickable)
- **Medium**: "continue to the next page" is wordy
- **Medium**: Not specific about what happens next

**Recommended Change:**
"Continue" or "Save and continue" (if saving)

**Why:** This is 1 word instead of 8, removes redundancy, and is more direct.
```

## Output Format

Provide a structured review with:
1. Quick checklist results (6 checkmarks)
2. Issues found (categorized by severity)
3. Recommended changes (before/after)
4. Reasoning (why the changes improve UX)
