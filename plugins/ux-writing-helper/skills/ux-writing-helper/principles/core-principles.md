# Core UX Writing Principles

This guide defines the fundamental principles of effective UX writing. Apply these principles to all user-facing text to ensure clarity, usability, and a positive user experience.

## 1. Clarity

Users should immediately understand what you're communicating.

### Use Active Voice Over Passive Voice

**Active voice** makes it clear who is doing what.

- "Click Save to continue" (active)
- "Changes will be saved when you click Save" (passive)

**Why**: Active voice is more direct and easier to understand.

### Use Second Person ("you/your")

Speak directly to the user.

- "Your profile has been updated" (second person)
- "The user's profile has been updated" (third person)
- "Profile updated" (no person, too terse)

**Why**: Second person creates a conversation and feels personal.

### Prefer Simple Present Tense for Instructions

Use present tense for actions happening now.

- "Enter your email address" (present)
- "You will need to enter your email address" (future)

**Why**: Present tense is more immediate and actionable.

### Avoid Jargon and Technical Terms

Use words your audience understands.

- "Choose a plan" vs "Select a SKU"
- "Save your work" vs "Persist data"
- "Internet connection" vs "Network connectivity"

**Exception**: Technical terms are okay when your audience is technical (API documentation, developer tools).

### One Idea Per Sentence

Break complex information into digestible pieces.

- Good: "Your password must be at least 8 characters. Include at least one number."
- Bad: "Your password must be at least 8 characters and include at least one number and one special character like !@#$%."

**Why**: Shorter sentences are easier to scan and understand.

### Front-Load Important Information

Put the most important information first.

- "Save your changes before closing this window"
- Not: "Before closing this window, make sure you save your changes"

**Why**: Users scan text and may not read the entire sentence.

## 2. Brevity

Every word should serve a purpose.

### Remove Unnecessary Words

Common culprits: very, really, actually, just, simply, basically, essentially

- "Enter your email" vs "Just enter your email"
- "Delete this item" vs "Simply delete this item"
- "Save changes" vs "Save your changes now"

**Why**: Shorter text is faster to read and feels less overwhelming.

### Use Contractions Where Appropriate

Contractions make your tone more conversational and friendly.

- "We couldn't find that page" vs "We could not find that page"
- "You're all set" vs "You are all set"
- "Don't worry" vs "Do not worry"

**Exception**: Avoid contractions in legal, security, or very formal contexts.

### Length Guidelines

Different UI elements have different constraints:

| Element | Recommended Length | Example |
|---------|-------------------|---------|
| Button | 1-3 words, <80 characters | "Save changes" |
| Menu item | 1-3 words | "Settings" |
| Form label | 1-4 words | "Email address" |
| Tooltip | 1-2 sentences, <150 characters | "Verified badge confirms your identity" |
| Error message | 1-3 sentences, <280 characters | "Your password is incorrect. Please try again or reset your password." |
| Placeholder | Example, not instruction | "name@example.com" |
| Help text | 1-2 sentences | "We'll never share your email with anyone" |

### Limit Error Messages to 2-3 Sentences

Structure: [What happened] + [Why] + [What to do]

- "We couldn't save your changes. Your internet connection was lost. Please reconnect and try again."

## 3. Actionability

Users should always know what to do next.

### Start Calls-to-Action with Verbs

Buttons should begin with action words.

**Good CTAs**:
- "Save changes"
- "Download report"
- "Create account"
- "Get started"

**Bad CTAs**:
- "Changes" (not a verb)
- "OK" (vague)
- "Submit" (generic, what am I submitting?)

### Be Specific About What Happens Next

Tell users exactly what will happen when they take action.

- "Save and continue" vs "Continue"
- "Delete account permanently" vs "Delete"
- "Send password reset email" vs "Reset"

**Why**: Users are more confident when they know the outcome.

### Provide Next Steps in Error Messages

Don't just tell users what went wrong—tell them how to fix it.

**Good error messages**:
- "Your password is incorrect. Please try again or click 'Forgot password' to reset it."
- "This email is already in use. Please sign in or use a different email address."

**Bad error messages**:
- "Error: Invalid credentials"
- "Email taken"

### Use Imperative Mood for Instructions

Give direct commands.

- "Enter your password" (imperative)
- "You should enter your password" (too soft)
- "Password entry" (noun, not action)

**Why**: Imperative mood is the most direct and actionable.

## 4. Consistency

Users shouldn't have to relearn your interface.

### Use the Same Term for the Same Concept

Pick one word and stick with it throughout your product.

**Examples**:
- Choose either "delete" OR "remove" (not both for the same action)
- Choose either "sign in" OR "log in" (not both)
- Choose either "photo" OR "image" (not both)

**Why**: Inconsistent terminology makes users question if different words mean different things.

### Create a Terminology List

Maintain a list of preferred terms:

| Concept | Use This | Not This |
|---------|----------|----------|
| Authentication | "Sign in" | "Log in", "Login" |
| Leave session | "Sign out" | "Log out", "Logout" |
| Account deletion | "Delete account" | "Remove account", "Close account" |
| Profile picture | "Profile photo" | "Avatar", "Picture", "Image" |

### Match Your Product's Established Voice

If your product is playful, maintain that. If it's professional, maintain that.

**Playful**: "Oops! That didn't work. Give it another shot?"
**Professional**: "An error occurred. Please try again."

### Follow Platform Conventions

Different platforms have different standards:

**iOS**:
- Sentence case for buttons ("Add to cart")
- "Delete" for destructive actions
- "Cancel" for backing out

**Android**:
- ALL CAPS for some button styles
- "Remove" more common than "Delete"

**Web**:
- More flexibility
- Match your brand standards

## 5. Empathy

Show users you understand and care about their experience.

### Acknowledge the User's Situation in Errors

Especially when something goes wrong, be empathetic.

**Empathetic**:
- "We couldn't save your work. Don't worry—your changes are still here. Check your connection and try again."

**Not empathetic**:
- "Save failed. Error code: 500"

### Avoid Blame

Never make users feel stupid or at fault.

**Good**:
- "That password is too common. Please choose a more unique password."
- "This email format isn't recognized. Please use format like name@example.com."

**Bad (blaming)**:
- "You entered an invalid email"
- "Wrong password"
- "You can't do that"

### Use Positive Framing When Possible

Focus on what users can do, not what they can't.

**Positive**:
- "To delete items, upgrade to Pro"
- "Sign in to save your work"

**Negative**:
- "You can't delete items on the free plan"
- "You must sign in to save"

### Consider Emotional Context

Match your tone to how the user likely feels.

**Success states**: Celebrate with them
- "Welcome aboard!"
- "You're all set!"
- "Success! Your payment went through."

**Error states**: Be calm and helpful
- "Something went wrong on our end. We're looking into it."
- "That link has expired. We'll send you a new one."

**Stressful contexts** (payment, deletion, legal): Be clear and reassuring
- "Your payment information is encrypted and secure"
- "Deleting your account is permanent and cannot be undone"

## 6. Tone Appropriateness

Tone should match the context and audience.

### Match Tone to Context

Different situations call for different tones:

**Onboarding**: Friendly and encouraging
- "Let's set up your account"
- "You're doing great!"

**Errors**: Calm and helpful
- "We couldn't process your payment. Please check your card details and try again."

**Success**: Positive and brief
- "Profile updated"
- "Changes saved"

**High-stakes** (deletion, payment): Professional and clear
- "This action cannot be undone"
- "Your card will be charged $99.99"

### Avoid Overly Casual Tone in Serious Contexts

**Don't**:
- "Whoopsie! Your account got deleted! 😅"
- "Yikes! Payment failed!"

**Do**:
- "Your account has been deleted. If this was a mistake, contact support immediately."
- "We couldn't process your payment. Please update your card details."

### Avoid Overly Formal Tone in Friendly Contexts

**Don't**:
- "Commencement of onboarding process"
- "Authenticate credentials to proceed"

**Do**:
- "Let's get started"
- "Sign in to continue"

## Summary Checklist

When writing any user-facing text, ask:

- [ ] **Clarity**: Will users immediately understand this?
- [ ] **Brevity**: Can I say this in fewer words?
- [ ] **Actionability**: Do users know what to do next?
- [ ] **Consistency**: Does this match how we say this elsewhere?
- [ ] **Empathy**: Am I being respectful and helpful?
- [ ] **Tone**: Is this the right tone for the context?

Apply these principles consistently and your UI copy will be clear, helpful, and user-friendly.
