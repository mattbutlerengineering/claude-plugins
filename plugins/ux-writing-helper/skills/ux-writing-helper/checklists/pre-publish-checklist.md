# Pre-Publish Checklist

Use this final checklist before shipping any user-facing text to production. This is your last quality gate to catch issues before users see them.

## When to Use This Checklist

Run through this checklist when you're about to:
- Ship a new feature
- Deploy copy changes
- Publish help documentation
- Update error messages
- Release product updates

---

## 1. Content Accuracy

**Verify all facts and functionality**:

- [ ] **Does the text accurately describe the feature?**
  - Test the feature to confirm behavior matches the copy
  - Verify button labels match what actually happens
  - Check that instructions are correct and up-to-date

- [ ] **Are there any factual errors?**
  - Spelling and grammar checked
  - Product names spelled correctly
  - Numbers and statistics accurate
  - Links point to the correct destination

- [ ] **Are technical details correct?**
  - API endpoints, code examples, file formats
  - System requirements, limitations, constraints
  - Pricing, dates, version numbers

**Example issues**:
- Button says "Save and close" but it doesn't actually close
- Error message says "Try again in 5 minutes" but actual timeout is 10 minutes
- Help doc refers to "Settings" page but it's actually called "Preferences"

---

## 2. User Context

**Ensure text makes sense for all users**:

- [ ] **Have you tested with different user types?**
  - New users (first-time experience)
  - Returning users (familiar with the product)
  - Power users (advanced features)
  - Admin vs. regular users

- [ ] **Does it make sense in all states?**
  - Empty states
  - Loading states
  - Error states
  - Success states
  - Edge cases (very long names, special characters, etc.)

- [ ] **Does it work on all platforms and devices?**
  - Mobile (smaller screens, touch interface)
  - Desktop (larger screens, mouse/keyboard)
  - Tablet (medium screens)
  - Different browsers

**Example issues**:
- "Welcome back!" shown to first-time users
- Button text too long for mobile screens
- Instructions assume mouse when used on touchscreen

---

## 3. Complete User Journey

**Test the full flow**:

- [ ] **Walk through the entire flow as a user would**
  - Does each step make sense in sequence?
  - Are instructions clear at each step?
  - Is the user guided through the process?

- [ ] **Are transitions smooth?**
  - Does the copy flow from one screen to the next?
  - Are confirmation messages shown when needed?
  - Are loading states explained?

- [ ] **Are all outcomes covered?**
  - Success path
  - Error paths
  - Edge cases

**Example issues**:
- Sign-up flow says "You're all set!" but doesn't explain what to do next
- Error occurs but no error message is shown
- User completes action but no confirmation is provided

---

## 4. Accessibility

**Ensure everyone can use your product**:

- [ ] **Screen reader compatibility**
  - All links are descriptive out of context
  - Alt text provided for images
  - Form labels are properly associated with inputs

- [ ] **Plain language**
  - Reading level appropriate for audience
  - No unnecessary jargon
  - Short sentences (<25 words)

- [ ] **Inclusive language**
  - Gender-neutral
  - No ableist terms
  - No assumptions about users

- [ ] **Color and contrast**
  - Information isn't conveyed by color alone
  - Text meets WCAG contrast requirements (4.5:1 for normal text)

**Testing**:
- Run through a screen reader (NVDA, JAWS, VoiceOver)
- Check reading level (Hemingway Editor)
- Verify with accessibility tools (WAVE, Lighthouse)

---

## 5. Localization Readiness

**Prepare for international users** (even if not translating now):

- [ ] **Will text work when translated?**
  - No hardcoded text in images
  - UI can accommodate 30-50% text expansion
  - No concatenated strings that won't translate well

- [ ] **No region-specific references**
  - Dates formatted clearly (April 7, 2024 vs 4/7/24)
  - No US-centric terms (ZIP code, SSN)
  - No cultural idioms or slang

- [ ] **Numbers and currency**
  - Currency symbols appropriate for audience
  - Number formats clear (1,000.00 vs 1.000,00)

**Example issues**:
- "Enter your ZIP code" (US-only term, use "Postal code")
- "Sign up" and "now!" as separate strings that get translated separately
- Button sized exactly for English text with no room for expansion

---

## 6. Brand Voice & Consistency

**Ensure consistency across your product**:

- [ ] **Matches your style guide**
  - Capitalization (sentence case vs title case)
  - Punctuation (periods in button text or not)
  - Formatting (bold, italics usage)

- [ ] **Consistent terminology**
  - Same terms used for same concepts throughout
  - Check against your terminology list
  - No synonyms for the same action

- [ ] **Consistent tone**
  - Matches your brand personality
  - Appropriate for context
  - Similar to other parts of the product

**Create a terminology list**:

| Concept | Use | Don't Use |
|---------|-----|-----------|
| Authentication | "Sign in" | "Log in", "Login" |
| Account removal | "Delete account" | "Remove account", "Close account" |
| Profile image | "Profile photo" | "Avatar", "Picture" |

---

## 7. Legal & Compliance

**Ensure you're protected legally**:

- [ ] **Privacy and data handling**
  - Clearly explain what data is collected
  - Link to privacy policy where appropriate
  - GDPR/CCPA compliance if applicable

- [ ] **Terms and conditions**
  - Users agree to terms before creating account
  - Links to terms of service are working
  - Legal requirements met for your industry

- [ ] **Required disclaimers**
  - Medical, financial, legal disclaimers if needed
  - Age restrictions clearly stated
  - Accessibility statements

- [ ] **Permissions and consent**
  - Clear language for permission requests
  - Users can opt in/out where required

**Example issues**:
- Collecting email without explaining how it's used
- No link to privacy policy on signup form
- Permission request doesn't explain why access is needed

---

## 8. Error Prevention

**Help users avoid mistakes**:

- [ ] **Confirmation for destructive actions**
  - Delete, remove, or permanent actions require confirmation
  - Confirmation clearly explains consequences
  - Provides option to cancel

- [ ] **Validation messages are helpful**
  - Explain what's wrong and how to fix it
  - Show before submission (not just after)
  - Use inline validation where possible

- [ ] **Prevent errors proactively**
  - Disable invalid options
  - Provide examples and formatting help
  - Auto-format when possible (phone numbers, credit cards)

**Example**:
- **Good**: "Delete this project? This action cannot be undone. All files will be permanently deleted. [Cancel] [Delete permanently]"
- **Bad**: "Are you sure? [Yes] [No]"

---

## 9. Mobile & Responsive

**Verify text works on small screens**:

- [ ] **Text is readable on mobile**
  - Font size large enough (minimum 16px for body text)
  - Line length appropriate (45-75 characters)
  - Enough contrast for outdoor viewing

- [ ] **Buttons and links are tappable**
  - Touch targets at least 44x44px
  - Text not too long for narrow screens
  - Spacing between tappable elements

- [ ] **Content fits on screen**
  - No horizontal scrolling for text
  - Modals fit on small screens
  - Long text can be scrolled or truncated gracefully

**Test on**:
- Small phones (iPhone SE, older Android)
- Large phones (iPhone Pro Max, Android phablets)
- Tablets (iPad, Android tablets)

---

## 10. Performance & Loading

**Consider loading states and delays**:

- [ ] **Loading messages are informative**
  - Explain what's happening
  - Set expectations for wait time
  - Provide progress indication if possible

- [ ] **Timeout messages are helpful**
  - Explain why it timed out
  - Suggest next steps
  - Offer retry option

- [ ] **Offline states are handled**
  - Clear message when offline
  - Explain what functionality is unavailable
  - Show cached content when possible

**Example**:
- **Good**: "Uploading your file... This may take a minute for large files."
- **Bad**: "Loading..."

---

## 11. Final Review

**One last check before shipping**:

- [ ] **Read aloud**
  - Does it sound natural when spoken?
  - Are there any awkward phrases?
  - Is the rhythm and flow good?

- [ ] **Get fresh eyes**
  - Have someone else review who hasn't seen it before
  - Ask: "Does this make sense?"
  - Note where they pause or get confused

- [ ] **Test with real users (if possible)**
  - User testing or beta testing
  - Watch where users hesitate or get confused
  - Gather feedback before full launch

- [ ] **Spell check and grammar check**
  - Run through spell checker
  - Use Grammarly or similar tool
  - Check punctuation and formatting

---

## Severity Assessment

Before shipping, assess the severity of any remaining issues:

### Critical (Must fix before shipping):
- Incorrect functionality description (says it does X but actually does Y)
- Confusing or misleading error messages
- Missing critical information (legal requirements, security warnings)
- Accessibility blockers (can't use feature with screen reader)
- Broken links or missing content

### High (Should fix before shipping):
- Inconsistent terminology or capitalization
- Poor tone for context (too casual for serious action)
- Not optimized for mobile
- Accessibility improvements needed

### Medium (Fix soon after shipping):
- Could be more concise
- Minor tone adjustments
- Small consistency issues

### Low (Nice to have):
- Polish and refinement
- Additional examples or help text

---

## Sign-Off Template

Before publishing, get sign-off from relevant stakeholders:

**Feature/Update**: [Name of feature or update]
**Date**: [Today's date]

**Checklist completed by**: [Your name]
**Reviewed by**:
- [ ] Product manager
- [ ] Designer
- [ ] Developer
- [ ] Legal/Compliance (if needed)
- [ ] Content strategist (if applicable)

**Critical issues found**: [None / List]
**High-priority issues found**: [None / List]
**Known issues (to be fixed later)**: [None / List]

**Approved to ship**: ☐ Yes ☐ No

---

## Quick Pre-Publish Checklist

**Before you ship, verify**:
- [ ] Content is accurate and matches functionality
- [ ] Tested with different user types and contexts
- [ ] Complete user journey makes sense
- [ ] Accessible to all users (screen readers, plain language)
- [ ] Ready for localization (no region-specific terms)
- [ ] Consistent with brand voice and style guide
- [ ] Legal and compliance requirements met
- [ ] Destructive actions have clear confirmations
- [ ] Works on mobile and responsive
- [ ] Loading and error states are handled
- [ ] Final review complete (read aloud, fresh eyes, spell check)

**If any critical or high issues remain, do not ship until resolved.**

---

## Post-Launch

After launching:

- [ ] **Monitor for issues**
  - Watch support tickets for confusion
  - Track analytics (where do users drop off?)
  - Gather user feedback

- [ ] **Iterate based on feedback**
  - Fix issues discovered post-launch
  - Refine based on real-world usage
  - Continuously improve

UX writing is never "done"—it's always evolving based on how users actually interact with your product.
