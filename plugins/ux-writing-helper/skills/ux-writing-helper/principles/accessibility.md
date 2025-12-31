# Accessibility & Inclusive Language Guidelines

Accessible writing ensures everyone can use your product, regardless of ability, language proficiency, or assistive technology. This guide covers plain language, inclusive language, screen reader considerations, and internationalization.

## Plain Language Principles

Plain language makes your content accessible to the widest audience, including people with cognitive disabilities, non-native speakers, and users in stressful situations.

### Write at an Appropriate Reading Level

**Target**: 8th-grade reading level for general audiences (10-12 years old)

**Why**:
- About half of US adults read at or below 8th-grade level
- Stress and urgency reduce reading comprehension
- Non-native speakers benefit from simpler language
- Everyone prefers clear, simple text

**Tools to check reading level**:
- Hemingway Editor
- Readable
- Microsoft Word (readability statistics)

---

### Use Short Sentences

**Guideline**: Keep sentences under 25 words when possible

**Good** (17 words):
- "Your password must be at least 8 characters long and include at least one number."

**Better** (13 words split into 2 sentences):
- "Your password must be at least 8 characters. Include at least one number."

**Why**: Short sentences are easier to parse and understand quickly.

---

### Use Common Words Over Fancy Synonyms

**Choose simple, everyday words:**

| Instead of | Use |
|------------|-----|
| "Utilize" | "Use" |
| "Commence" | "Start" or "Begin" |
| "Terminate" | "End" or "Stop" |
| "Endeavor" | "Try" |
| "Purchase" | "Buy" |
| "Obtain" | "Get" |
| "Assist" | "Help" |
| "Additional" | "More" or "Extra" |
| "Modify" | "Change" |
| "Require" | "Need" |

**Exception**: Technical products for technical audiences can use domain-specific terms where appropriate (but still define them).

---

### Avoid Idioms and Cultural References

Idioms don't translate well and can confuse non-native speakers.

**Avoid**:
- "Piece of cake" → Use: "Easy"
- "Back to square one" → Use: "Start over"
- "Ballpark figure" → Use: "Estimate"
- "Touch base" → Use: "Check in"
- "Think outside the box" → Use: "Think creatively"
- "Hit the ground running" → Use: "Start strong" or "Begin immediately"

**Cultural references** (holidays, sports, pop culture) may not be universal:
- "Home run" → Use: "Success"
- "Fourth quarter" → Use: "End of year"
- "Black Friday deals" → May not mean anything outside the US

---

### Define Technical Terms

If you must use technical terms, define them the first time.

**Good**:
- "Two-factor authentication (2FA) adds an extra security step when you sign in."
- "API (Application Programming Interface) lets different apps communicate."

**Provide tooltips or help text** for technical features:
- "SSH key: A cryptographic key pair used for secure authentication"

---

## Inclusive Language

Inclusive language respects all users regardless of gender, ability, age, race, or other characteristics.

### Use Gender-Neutral Language

**Use "they/them" instead of "he/she":**

**Before**:
- "When a user signs in, he will see his dashboard"

**After**:
- "When a user signs in, they will see their dashboard"
- Or better: "When you sign in, you'll see your dashboard" (second person)

---

### Avoid Gendered Job Titles

| Instead of | Use |
|------------|-----|
| "Businessman" | "Business person" or "Executive" |
| "Salesman" | "Salesperson" or "Sales rep" |
| "Chairman" | "Chair" or "Chairperson" |
| "Manpower" | "Workforce" or "Staff" |
| "Man-hours" | "Work hours" or "Person-hours" |

---

### Avoid Ableist Language

Don't use disability-related terms as metaphors for bad things.

**Ableist terms to avoid**:

| Avoid | Use Instead |
|-------|-------------|
| "Blind to the issue" | "Unaware of the issue" |
| "Deaf to feedback" | "Ignoring feedback" |
| "Crippled by debt" | "Overwhelmed by debt" |
| "Lame excuse" | "Weak excuse" or "Poor excuse" |
| "Crazy idea" | "Unusual idea" or "Bold idea" |
| "Insane amount" | "Huge amount" or "Extreme amount" |
| "Dumb question" | "Basic question" |
| "Tone-deaf" | "Insensitive" or "Out of touch" |

**Why**: These terms are insensitive to people with disabilities and perpetuate harmful stereotypes.

---

### Use Person-First Language (When Appropriate)

**Person-first**: "Person with a disability"
**Identity-first**: "Disabled person"

**General rule**: Use person-first language unless you know the community prefers identity-first.

**Examples**:
- "Person with diabetes" (person-first)
- "Person who is deaf" (person-first)
- "Person with autism" (person-first, though many autistic people prefer "autistic person")

**Exception**: Many disability communities prefer identity-first language (deaf community, autistic community, blind community). When in doubt, ask or follow the community's lead.

---

### Avoid Assumptions About Users

Don't assume users':
- Gender
- Age
- Family structure
- Physical abilities
- Location
- Income level
- Education level
- Cultural background

**Avoid**:
- "Ask your wife to..." (assumes male user with a wife)
- "Seniors may have trouble..." (assumes difficulty based on age)
- "Obviously..." or "Clearly..." (assumes knowledge level)
- "Everyone knows..." (excludes people who don't)

---

## Screen Reader Considerations

Screen readers help blind and low-vision users navigate digital products by reading text aloud. Write with screen readers in mind.

### Write Descriptive Link Text

Screen reader users often tab through links. Make links meaningful out of context.

**Bad** (meaningless out of context):
- "Click here"
- "Learn more"
- "Read more"
- "This page"

**Good** (descriptive):
- "Download the annual report"
- "Read our privacy policy"
- "View pricing details"
- "Contact customer support"

**Example in context**:
- Bad: "To reset your password, click here"
- Good: "Reset your password"

---

### Provide Alt Text Context in Descriptions

When writing alt text for images:
- Describe the content and function, not just "image" or "photo"
- Keep it concise (under 150 characters)
- Include context relevant to the surrounding content

**Example**:
- Bad: "Graph"
- Good: "Line graph showing revenue growth from $1M to $5M over 5 years"

**For UI icons with text labels**, alt text can be blank if the label is sufficient:
- Icon + "Settings" label → Alt text can be empty (redundant)

---

### Avoid Directional Language When Possible

Screen reader users can't see layout, so directional references can be confusing.

**Avoid**:
- "Click the button on the right"
- "See the sidebar to the left"
- "Scroll down to see more"
- "Above" or "Below"

**Better**:
- "Click the 'Save' button"
- "Open the settings menu"
- "View more options"
- "In the previous section" or "In the next section"

**Exception**: Directional language is fine when it's helpful and not the only way to understand:
- "Enter your email in the field below" (okay if the field is also clearly labeled)

---

### Don't Rely Solely on Color

Don't use color as the only way to convey information.

**Bad**:
- "Required fields are in red"
- "Green means approved, red means denied"

**Good**:
- "Required fields are marked with an asterisk (*)"
- "Approved requests show a checkmark, denied requests show an X"

**Why**: Color-blind users and screen reader users can't distinguish colors.

---

### Use Semantic Formatting

Screen readers understand HTML structure. Use proper headings, lists, and labels.

**Headings**:
- Use H1 for page title
- Use H2 for main sections
- Use H3 for subsections
- Don't skip levels (don't go from H2 to H4)

**Lists**:
- Use actual list elements (<ul>, <ol>) not just bullet characters
- Screen readers announce "List with 5 items"

**Forms**:
- Every input needs a clear label
- Use placeholder text for examples, not instructions
- Associate labels with inputs programmatically

---

## International Audiences

Writing for international audiences requires considering translation, cultural differences, and varying levels of English proficiency.

### Avoid Region-Specific References

**Avoid**:
- US-centric measurements: "Miles", "Fahrenheit", "Gallons"
- US-specific dates: "4/7/2024" (ambiguous internationally)
- US holidays: "Black Friday", "Labor Day"
- Regional slang: "Y'all", "Folks"

**Use**:
- Metric and imperial: "100 miles (160 km)"
- Clear date formats: "April 7, 2024" or "7 April 2024"
- Universal concepts: "Holiday sale" instead of "Black Friday sale"
- Neutral terms: "Everyone" instead of "Y'all"

---

### Consider Text Expansion in Translation

Text can expand by 30-50% when translated from English.

**English → German**: Can expand significantly
- "Settings" (8 chars) → "Einstellungen" (13 chars) = 62% longer

**English → Spanish**: Moderate expansion
- "Submit" (6 chars) → "Enviar" (6 chars) = same length
- "Delete account" (14 chars) → "Eliminar cuenta" (15 chars)

**Design implications**:
- Don't hard-code exact widths for buttons
- Allow text to wrap or truncate gracefully
- Test UI with longer text strings

---

### Avoid Text in Images

Text embedded in images doesn't translate and isn't accessible to screen readers.

**Don't**:
- Put important text in screenshots or graphics
- Use image-based buttons with text

**Do**:
- Use HTML text whenever possible
- Provide translated versions of any images with text
- Use SVG with text layers that can be translated

---

### Use Clear Date and Time Formats

Date formats vary by region.

**Ambiguous**:
- "3/4/2024" (March 4 in US, April 3 in Europe)

**Clear**:
- "March 4, 2024"
- "4 March 2024"
- "2024-03-04" (ISO 8601 format)

**Time zones**:
- Always specify time zone for scheduled events
- "10:00 AM PST" or "10:00 AM Pacific Time"
- Or use user's local time: "10:00 AM your time"

---

### Use Universal Icons

Some icons have different meanings in different cultures.

**Generally safe**:
- Magnifying glass (search)
- Plus sign (add)
- X (close)
- Checkmark (confirm)
- Home icon (home page)

**Use with caution**:
- Thumbs up (offensive in some cultures)
- Hand gestures (meanings vary)
- Mailbox icon (different styles globally)

**Always pair icons with text labels** for clarity.

---

## Readability Best Practices

### Use Proper Punctuation

**Don't skip punctuation** for brevity:
- Bad: "Lets eat grandma"
- Good: "Let's eat, Grandma"

**Use commas for clarity**:
- "After eating, the dog went outside" (clear)
- "After eating the dog went outside" (confusing)

---

### Break Up Long Text

**Use**:
- Short paragraphs (2-4 sentences)
- Bullet points for lists
- Headings to break up sections
- White space for breathing room

**Avoid**:
- Walls of text
- Long, dense paragraphs

---

### Use Active Voice

Active voice is clearer and more direct.

**Active**: "We updated your account"
**Passive**: "Your account has been updated"

**Active**: "You can download the report"
**Passive**: "The report can be downloaded"

---

## Accessibility Checklist

When writing UI copy, verify:

**Plain Language**:
- [ ] Is this written at an 8th-grade reading level?
- [ ] Are sentences under 25 words?
- [ ] Did I use common words instead of fancy synonyms?
- [ ] Did I avoid idioms and cultural references?
- [ ] Did I define any technical terms?

**Inclusive Language**:
- [ ] Is this gender-neutral?
- [ ] Did I avoid ableist language?
- [ ] Did I avoid making assumptions about users?

**Screen Readers**:
- [ ] Are link texts descriptive out of context?
- [ ] Did I avoid relying solely on color?
- [ ] Did I avoid unnecessary directional language?

**International**:
- [ ] Did I avoid region-specific references?
- [ ] Will this text work if it expands 30-50% in translation?
- [ ] Are dates and times formatted clearly?
- [ ] Did I avoid text in images?

---

## Resources for Accessible Writing

**Guidelines**:
- [WCAG 2.1 (Web Content Accessibility Guidelines)](https://www.w3.org/WAI/WCAG21/quickref/)
- [Plain Language Guidelines](https://www.plainlanguage.gov/guidelines/)
- [Microsoft Inclusive Design](https://www.microsoft.com/design/inclusive/)

**Testing Tools**:
- Hemingway Editor (readability)
- WAVE (web accessibility evaluation)
- Lighthouse (Chrome DevTools)
- Screen readers: NVDA (free), JAWS, VoiceOver (Mac/iOS)

**Reading Level Checkers**:
- Hemingway App
- Readable.com
- Microsoft Word (File → Options → Proofing → Show readability statistics)

---

## Summary

**Accessible writing is**:
- Clear and simple (plain language)
- Respectful and inclusive (inclusive language)
- Compatible with assistive technology (screen readers)
- Understandable across cultures (international)

**Remember**: Accessible writing isn't just for people with disabilities—it benefits everyone by making content clearer, faster to read, and easier to understand.
