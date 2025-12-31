---
description: Analyzes the tone of user-facing text and verifies it's appropriate for the context
allowed-tools: Read, Grep
---

# Check Tone

Analyzes the tone of user-facing text and verifies it's appropriate for the context.

## Instructions

When this command is invoked:

1. **Gather context and text**:
   - Get the text to analyze
   - Ask about context:
     - Where does this appear? (error, success, onboarding, warning, etc.)
     - What just happened? (user completed action, error occurred, etc.)
     - Who is the audience? (new users, power users, all users, etc.)
     - What's the emotional context? (frustration, excitement, anxiety, etc.)

2. **Identify current tone**:
   - Analyze word choice, sentence structure, punctuation
   - Categorize as: Friendly, Professional, Helpful, Casual, Formal, Empathetic, etc.
   - Note tone indicators:
     - Contractions (friendly) vs no contractions (formal)
     - "We" and "you" (personal) vs passive voice (distant)
     - Exclamation points (enthusiastic) vs periods (neutral)
     - Casual words vs formal language

3. **Determine appropriate tone** using `../skills/ux-writing-helper/principles/tone-guidelines.md`:
   - **Onboarding**: Friendly & Helpful
   - **Errors**: Calm & Empathetic
   - **Success**: Positive & Brief
   - **Warnings/Destructive actions**: Professional & Clear
   - **Help content**: Helpful & Supportive

4. **Assess tone match**:
   - Does current tone match recommended tone?
   - Is it too casual or too formal for the context?
   - Does it match the product's voice?
   - Is it empathetic enough (especially for errors)?

5. **Provide recommendations**:
   - If tone is appropriate, confirm and explain why
   - If tone needs adjustment, show how to modify it
   - Provide before/after examples
   - Explain the emotional impact of each version

6. **Reference tone guidelines**:
   - Cite examples from tone-guidelines.md
   - Show similar tone patterns from examples files
   - Reference external style guides when helpful

## Example Usage

```
/ux-writing-helper:check-tone

User: "Oops! Looks like something broke! Try again maybe?"
Context: Error message when payment fails

Claude: Let me analyze the tone of this error message:

**Current Tone:** Very casual, playful, uncertain
**Tone Indicators:**
- "Oops!" - Very casual
- "Looks like" - Uncertain
- "maybe?" - Lacks confidence
- Exclamation points - Too enthusiastic for an error

**Recommended Tone:** Calm, empathetic, and helpful
**Why:** Payment failures cause user anxiety. The playful tone minimizes the seriousness and "maybe" suggests uncertainty about the solution.

**Current:** "Oops! Looks like something broke! Try again maybe?"
**Issues:** Too casual for financial context, doesn't inspire confidence, no specific guidance

**Improved:** "We couldn't process your payment. Please check your card details and try again."
**Tone:** Calm, professional, helpful
**Why this works:**
- Clear about what happened
- Professional tone appropriate for payments
- Empathetic ("We couldn't" vs "You failed")
- Actionable next steps
- Confident (no "maybe")
```

## Output Format

Provide:
1. Current tone analysis
2. Recommended tone for context
3. Tone match assessment (✓ matches, ⚠️ could improve, ✗ inappropriate)
4. Before/after if tone needs adjustment
5. Reasoning based on context and emotional impact
