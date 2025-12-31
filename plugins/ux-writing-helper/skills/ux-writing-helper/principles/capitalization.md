# Capitalization Guidelines for UI Text

Consistent capitalization makes your interface look polished and professional. This guide covers when to use sentence case, title case, or ALL CAPS in different UI contexts.

## The Three Main Styles

### 1. Sentence Case (Recommended for Most UI)

Capitalize only the first word and proper nouns.

**Format**: "This is sentence case for buttons"

**Examples**:
- "Save changes"
- "Add to cart"
- "Delete account"
- "Sign in with Google" (Google is a proper noun)
- "Export to PDF" (PDF is an acronym)

**Best for**:
- Buttons
- Menu items
- Form labels
- Navigation links
- Dropdown options
- Checkbox and radio button labels
- Toggle labels

**Why sentence case**:
- Easier to read and scan
- More conversational and friendly
- Industry trend (Google, Apple, Slack use it)
- Better for accessibility and screen readers
- Works better for longer phrases

---

### 2. Title Case

Capitalize all major words (nouns, verbs, adjectives, adverbs). Don't capitalize articles (a, an, the), coordinating conjunctions (and, but, or), or prepositions with fewer than 4 letters (in, on, at, to, for).

**Format**: "This Is Title Case for Headings"

**Examples**:
- "Getting Started With Your Account"
- "Terms of Service"
- "Privacy and Security Settings"
- "How to Export Your Data"

**Best for**:
- Page titles
- Section headings
- Dialog titles
- App/product names
- Feature names

**Title case rules**:
- Always capitalize the first and last word
- Capitalize verbs, including "is," "are," "was"
- Capitalize words of 4+ letters
- Don't capitalize: a, an, the, and, but, or, nor, at, by, for, in, of, on, to, up, as

**Examples**:
- "Sign In to Your Account" (capitalize "In" and "To" because they're verbs and 2+ letters)
- "How to Use the Dashboard" (don't capitalize "to" or "the")
- "Overview of the Settings Page" (capitalize "Overview" and "Settings")

---

### 3. ALL CAPS

ALL UPPERCASE TEXT.

**Examples**:
- "FAQ"
- "API"
- "URL"
- "OK" (in some older UI patterns)

**Best for**:
- Abbreviations and acronyms only
- Intentional emphasis (use sparingly)

**Why to avoid**:
- Harder to read (we recognize words by their shape)
- Feels like shouting
- Less accessible for dyslexic readers
- Looks dated in modern UI design

**When ALL CAPS is acceptable**:
- Established acronyms: FAQ, API, PDF, URL, HTML, CSS
- State/country codes: US, UK, CA, NY
- Brand names that use all caps: IBM, NASA, BMW

**Never use for**:
- Buttons or CTAs
- Error messages
- Body text
- Labels

---

## Platform-Specific Standards

### iOS (Apple Human Interface Guidelines)

**Standard**: Sentence case for almost everything

**Buttons**: "Add to favorites"
**Navigation**: "Settings"
**Alerts**: "Delete Photo?" (title in title case, buttons in sentence case)
**Action buttons**: "Delete", "Cancel", "Save"
**Destructive actions**: "Delete Photo"

**Reference**: [Apple HIG - Typography](https://developer.apple.com/design/human-interface-guidelines/typography)

---

### Android (Material Design)

**Standard**: Sentence case for buttons, ALL CAPS for some older components (now deprecated)

**Modern Material Design**: Sentence case
- "Add to cart"
- "Delete item"

**Legacy Material**: ALL CAPS for buttons (being phased out)
- "ADD TO CART" (old style)

**Current recommendation**: Use sentence case

**Reference**: [Material Design - Text](https://m3.material.io/foundations/content-design)

---

### Web (General Best Practices)

**Standard**: Choose sentence case or title case and be consistent

**Most modern web apps use**:
- Sentence case for buttons and actions
- Title case for page headings

**Examples** (popular sites):
- **Slack**: Sentence case ("Join workspace")
- **GitHub**: Sentence case ("Create repository")
- **Notion**: Sentence case ("Add a page")
- **Linear**: Sentence case ("New issue")

---

## Capitalization by UI Element

### Buttons & CTAs

**Recommended**: Sentence case

| Good (Sentence Case) | Avoid (Title Case) | Avoid (ALL CAPS) |
|---------------------|-------------------|------------------|
| "Save changes" | "Save Changes" | "SAVE CHANGES" |
| "Add to cart" | "Add To Cart" | "ADD TO CART" |
| "Sign in" | "Sign In" | "SIGN IN" |
| "Get started" | "Get Started" | "GET STARTED" |

**Exception**: If your brand style guide requires title case, use it consistently everywhere.

---

### Form Labels & Fields

**Recommended**: Sentence case

**Labels**:
- "First name"
- "Email address"
- "Phone number"
- "Billing address"

**Not**:
- "First Name" (title case feels formal)
- "EMAIL ADDRESS" (all caps is hard to read)

**Placeholder text**: Sentence case or example
- "Enter your email"
- "name@example.com"

---

### Navigation & Menu Items

**Recommended**: Sentence case (or single words)

**Single words**:
- "Dashboard"
- "Settings"
- "Profile"
- "Messages"

**Multi-word**:
- "My account" (sentence case)
- "Team settings" (sentence case)
- "Billing history" (sentence case)

**Not**:
- "My Account" (too formal)
- "SETTINGS" (too loud)

---

### Page Titles & Section Headings

**Recommended**: Title case or sentence case (be consistent)

**Title case** (traditional):
- "Account Settings"
- "Privacy and Security"
- "Getting Started Guide"

**Sentence case** (modern trend):
- "Account settings"
- "Privacy and security"
- "Getting started guide"

**Choose one style** and use it for all headings throughout your product.

---

### Error Messages & Alerts

**Recommended**: Sentence case

**Good**:
- "Your password is incorrect"
- "This field is required"
- "Connection lost. Please try again."

**Avoid**:
- "Your Password Is Incorrect" (title case feels robotic)
- "THIS FIELD IS REQUIRED" (all caps feels aggressive)

---

### Toggle Labels & Checkboxes

**Recommended**: Sentence case

**Toggles**:
- "Enable notifications"
- "Show preview"
- "Dark mode"

**Checkboxes**:
- "Remember me"
- "I agree to the terms of service"
- "Send me updates"

---

### Tooltips & Help Text

**Recommended**: Sentence case

**Tooltips**:
- "Verified badge confirms your identity to other users"
- "Click to copy link"

**Help text**:
- "We'll never share your email with anyone"
- "Passwords must be at least 8 characters"

---

## Special Cases

### Acronyms & Abbreviations

Keep acronyms in all caps, even in sentence case:

- "Export to PDF"
- "API key"
- "FAQ section"
- "Upload CSV file"

---

### Proper Nouns & Brand Names

Always capitalize proper nouns and respect brand capitalization:

- "Sign in with Google"
- "Connect to Slack"
- "Import from Dropbox"
- "Share on LinkedIn"

**Brand names with unusual capitalization**:
- "iPhone" (not "IPhone")
- "eBay" (not "Ebay")
- "PayPal" (not "Paypal")

---

### Colon Usage

**Modern UI**: Don't use colons after labels

**Good**:
- "Email address"
- "First name"

**Dated**:
- "Email Address:"
- "First Name:"

**Exception**: Colons are fine in forms where they improve scannability, especially in dense enterprise UIs.

---

## Consistency Rules

### Pick a Style and Stick to It

**Don't mix styles for the same element type**:

**Bad** (inconsistent buttons):
- "Save Changes" (title case)
- "Delete account" (sentence case)
- "UPLOAD FILE" (all caps)

**Good** (consistent sentence case):
- "Save changes"
- "Delete account"
- "Upload file"

---

### Create a Capitalization Style Guide

Document your choices:

| Element | Style | Example |
|---------|-------|---------|
| Buttons | Sentence case | "Add to cart" |
| Page titles | Title case | "Account Settings" |
| Form labels | Sentence case | "Email address" |
| Menu items | Sentence case | "My profile" |
| Section headings | Title case | "Getting Started" |
| Error messages | Sentence case | "This field is required" |

---

## Quick Decision Tree

**Is it an acronym?**
→ Yes: ALL CAPS (FAQ, API, PDF)
→ No: Continue

**Is it a page title or main heading?**
→ Yes: Title case or sentence case (be consistent)
→ No: Continue

**Is it a button, label, menu item, or any other UI element?**
→ Yes: Sentence case (recommended)

---

## Common Mistakes to Avoid

### Mistake 1: Inconsistent Capitalization

**Bad**:
- "Save changes" (button 1)
- "Delete Account" (button 2)
- "CANCEL" (button 3)

**Good**:
- "Save changes"
- "Delete account"
- "Cancel"

---

### Mistake 2: Over-Capitalizing

**Bad**:
- "Click Here To Learn More"
- "Sign Up For Our Newsletter"

**Good**:
- "Click here to learn more"
- "Sign up for our newsletter"

---

### Mistake 3: ALL CAPS for Emphasis

**Bad**:
- "IMPORTANT: Read this first"
- "WARNING: This action cannot be undone"

**Good**:
- "Important: Read this first"
- "Warning: This action cannot be undone"

Use bold or color for emphasis, not all caps.

---

### Mistake 4: Capitalizing Every Word in a Sentence

**Bad**:
- "Your Account Has Been Created Successfully"

**Good**:
- "Your account has been created successfully"

---

## Summary

**For modern UIs, use sentence case for almost everything except**:
- Page titles and section headings (title case or sentence case, be consistent)
- Acronyms (ALL CAPS)
- Proper nouns and brand names (respect their capitalization)

**Sentence case is**:
- Easier to read
- More friendly and approachable
- Better for accessibility
- The modern industry standard

**Be consistent** across your entire product. Choose a style and document it in your design system.
