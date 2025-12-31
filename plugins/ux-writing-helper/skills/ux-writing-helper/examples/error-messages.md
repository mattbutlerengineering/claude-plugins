# Error Message Patterns

Error messages are critical moments in the user experience. Good error messages reduce frustration, build trust, and help users recover quickly.

## The Error Message Formula

**Structure**: [What happened] + [Why it happened (optional)] + [What to do next]

**Tone**: Calm, helpful, empathetic (never blaming)

**Length**: 1-3 sentences maximum

---

## Form Validation Errors

### Required Fields

**Pattern**: "This field is required" or "Please enter [field name]"

**Examples**:
- "This field is required"
- "Please enter your email address"
- "First name is required"

**Why it works**: Clear, direct, tells users exactly what's missing

---

### Email Format Errors

**Pattern**: "This email format isn't recognized. Please use format like name@example.com"

**Examples**:
- "Please enter a valid email address"
- "This email format isn't recognized. Try name@example.com"
- "Email must include '@' symbol"

**Why it works**: Shows an example of correct format

---

### Password Requirements

**Pattern**: "Password must [specific requirements]"

**Examples**:
- "Password must be at least 8 characters"
- "Password must be at least 8 characters and include a number"
- "Password must include at least one uppercase letter"
- "Password must be at least 12 characters and include a number and symbol"

**Why it works**: Specific about what's needed, not just "invalid password"

---

### Password Mismatch

**Pattern**: "Passwords don't match. Please try again."

**Examples**:
- "Passwords don't match"
- "These passwords don't match. Please re-enter."
- "Confirmation password must match"

**Why it works**: Clear about the problem

---

### Username/Email Already Taken

**Pattern**: "This [field] is already in use. [Alternative action]"

**Examples**:
- "This email is already registered. Try signing in instead."
- "This username is already taken. Try adding numbers or underscores."
- "An account with this email already exists. Sign in or use a different email."

**Why it works**: Explains the issue and provides next steps

---

### Invalid Characters

**Pattern**: "[Field] can only contain [allowed characters]"

**Examples**:
- "Username can only contain letters, numbers, and underscores"
- "Special characters are not allowed in this field"
- "Project name can't include slashes or symbols"

**Why it works**: Specific about what's allowed

---

### Length Requirements

**Pattern**: "[Field] must be [length requirement]"

**Examples**:
- "Bio must be less than 160 characters"
- "Title must be at least 3 characters"
- "Password must be at least 8 characters"
- "Comment is too long (maximum 500 characters)"

**Why it works**: Clear constraints

---

### Number Format Errors

**Pattern**: "Please enter a valid [type of number]"

**Examples**:
- "Please enter a valid phone number"
- "Phone number must be 10 digits"
- "Please enter a number"
- "Age must be between 13 and 120"

**Why it works**: Shows what's expected

---

### Date/Time Errors

**Pattern**: "Please enter a valid date" or "[Specific date requirement]"

**Examples**:
- "Please select a date"
- "End date must be after start date"
- "Date must be in the future"
- "Please enter date in MM/DD/YYYY format"

**Why it works**: Explains the constraint

---

### File Upload Errors

**Pattern**: "[What's wrong with file]. [What to do]"

**Examples**:
- "This file type is not supported. Please upload a PDF or DOCX file."
- "File is too large. Maximum size is 5 MB."
- "This file is empty. Please upload a file with content."
- "Only images are allowed. Please upload a JPG, PNG, or GIF."

**Why it works**: Specific about the problem and acceptable alternatives

---

## Authentication Errors

### Incorrect Password

**Pattern**: "Your password is incorrect. [Recovery option]"

**Examples**:
- "Your password is incorrect. Please try again or reset your password."
- "Incorrect password. Try again or click 'Forgot password'."
- "The password you entered is incorrect."

**Why it works**: Clear, empathetic, offers recovery option

**Avoid**:
- "Invalid credentials" (too technical)
- "You entered the wrong password" (blaming)
- "Authentication failed" (too technical)

---

### Account Not Found

**Pattern**: "We couldn't find an account with that [identifier]. [Alternative action]"

**Examples**:
- "We couldn't find an account with that email. Try a different email or create an account."
- "No account found. Check the email address or sign up."
- "This email isn't registered. Create an account to continue."

**Why it works**: Clear problem, offers alternatives

---

### Account Locked/Suspended

**Pattern**: "Your account has been [status]. [Why and what to do]"

**Examples**:
- "Your account has been temporarily locked for security reasons. Try again in 10 minutes."
- "Your account has been suspended. Contact support to restore access."
- "Too many failed login attempts. Your account is locked for 30 minutes."

**Why it works**: Explains why and what to do

---

### Session Expired

**Pattern**: "Your session has expired [reason]. Please sign in again."

**Examples**:
- "Your session has expired. Please sign in again to continue."
- "For your security, your session has timed out. Please sign in again."
- "You've been signed out due to inactivity. Sign in to continue."

**Why it works**: Explains why (security) and what to do

---

### Two-Factor Authentication Errors

**Pattern**: "The [code type] you entered is [problem]. [What to do]"

**Examples**:
- "This code is incorrect. Please check and try again."
- "This code has expired. Request a new code."
- "The verification code you entered is invalid. Make sure you're using the latest code sent to your phone."

**Why it works**: Specific about the problem and solution

---

## Network & Connection Errors

### No Internet Connection

**Pattern**: "We couldn't connect to [service]. Check your internet connection and try again."

**Examples**:
- "No internet connection. Please check your network and try again."
- "We couldn't connect to the server. Check your internet connection and try again."
- "You appear to be offline. Check your connection and try again."

**Why it works**: Explains the likely cause and action

---

### Server Errors (500)

**Pattern**: "Something went wrong on our end. [Reassurance and what to do]"

**Examples**:
- "Something went wrong on our end. We're looking into it. Please try again in a few minutes."
- "We're having technical difficulties. Our team has been notified. Please try again later."
- "Oops, our servers are having issues. We're working on it. Try again shortly."

**Why it works**: Takes responsibility, reassures, sets expectations

**Avoid**:
- "500 Internal Server Error" (too technical)
- "An error occurred" (too vague)

---

### Not Found Errors (404)

**Pattern**: "We couldn't find that [resource]. [What to do]"

**Examples**:
- "We couldn't find that page. Check the URL or return to the homepage."
- "This page doesn't exist. It may have been moved or deleted."
- "File not found. It may have been deleted or moved to a different folder."

**Why it works**: Clear about what's missing, offers alternatives

---

### Request Timeout

**Pattern**: "This is taking longer than expected. [What to do]"

**Examples**:
- "This request timed out. Please try again."
- "This is taking too long. Please refresh and try again."
- "Connection timed out. Check your internet connection and retry."

**Why it works**: Explains what happened, provides action

---

### Rate Limiting

**Pattern**: "You've [action] too many times. [When to try again]"

**Examples**:
- "You've tried to sign in too many times. Please wait 10 minutes and try again."
- "Too many requests. Please wait a moment and try again."
- "You've exceeded the daily upload limit. Try again tomorrow or upgrade your plan."

**Why it works**: Explains the limit and when it resets

---

## Permission & Access Errors

### Insufficient Permissions

**Pattern**: "You don't have permission to [action]. [Who to contact or how to get access]"

**Examples**:
- "You don't have permission to delete this file. Contact your team admin."
- "This action requires admin permissions. Ask your team owner for access."
- "You can't edit this project. Request edit access from the owner."

**Why it works**: Clear about restriction and how to resolve

---

### Feature Not Available on Current Plan

**Pattern**: "This feature requires [plan level]. [How to upgrade]"

**Examples**:
- "This feature is only available on Pro plans. Upgrade to access."
- "To use this feature, upgrade to our Business plan."
- "Custom domains require a Premium subscription. Upgrade now."

**Why it works**: Clear about requirement and path forward

---

### Private/Restricted Content

**Pattern**: "This [content] is [restriction]. [What to do]"

**Examples**:
- "This project is private. Request access from the owner."
- "This file has been restricted by your administrator."
- "You need to be signed in to view this content."

**Why it works**: Explains restriction and action

---

## Payment & Billing Errors

### Payment Failed

**Pattern**: "We couldn't process your payment. [Likely cause and what to do]"

**Examples**:
- "We couldn't process your payment. Please check your card details and try again."
- "Your payment failed. Verify your card information or try a different payment method."
- "Payment declined. Contact your bank or try another card."

**Why it works**: Clear problem, actionable steps

---

### Card Declined

**Pattern**: "Your card was declined. [What to do]"

**Examples**:
- "Your card was declined. Please try a different card or contact your bank."
- "This card was declined. Check with your bank or use another payment method."

**Why it works**: Respectful (doesn't assume why), offers alternatives

---

### Insufficient Funds

**Pattern**: "This card has insufficient funds. Please try a different payment method."

**Examples**:
- "This card has insufficient funds. Try another card."
- "We couldn't complete the payment. Please use a different payment method."

**Why it works**: Discreet (doesn't embarrass user), offers solution

---

### Expired Card

**Pattern**: "This card has expired. Please update your payment method."

**Examples**:
- "This card has expired. Please add a new payment method."
- "Your card expiration date has passed. Update your payment information."

**Why it works**: Clear problem and solution

---

### Invalid Card Information

**Pattern**: "[Specific field] is invalid. Please check and try again."

**Examples**:
- "This card number is invalid. Please check and try again."
- "The security code you entered is invalid."
- "Please enter a valid expiration date."

**Why it works**: Specific about what's wrong

---

## Data & Content Errors

### Save Failed

**Pattern**: "We couldn't save your changes. [Why and what to do]"

**Examples**:
- "We couldn't save your changes. Your internet connection was lost. Please reconnect and try again."
- "Changes couldn't be saved. Please try again or contact support if this continues."
- "Save failed. Check your connection and try again. Your changes are still here."

**Why it works**: Reassures data isn't lost, provides action

---

### Upload Failed

**Pattern**: "Upload failed. [Why and what to do]"

**Examples**:
- "We couldn't upload your file. Check your internet connection and try again."
- "Upload failed. This file type is not supported. Try a PDF or JPG instead."
- "File upload failed. Make sure the file is less than 10 MB."

**Why it works**: Explains why and how to fix

---

### Delete Failed

**Pattern**: "We couldn't delete [item]. [What to do]"

**Examples**:
- "We couldn't delete this file. Please try again."
- "This item couldn't be deleted because it's in use by another project."
- "Delete failed. You need admin permissions to remove this."

**Why it works**: Clear about problem and constraint

---

### Search No Results

**Pattern**: "No results for '[query]'. [Suggestions]"

**Examples**:
- "No results for 'laptop'. Try different keywords or check your spelling."
- "We couldn't find anything matching 'xyz'. Try broader search terms."
- "No results. Try searching for 'projects' or 'files' instead."

**Why it works**: Shows what was searched, offers alternatives

---

### Import/Export Errors

**Pattern**: "[Operation] failed. [Why and what to do]"

**Examples**:
- "Import failed. This file format is not supported. Please use a CSV file."
- "We couldn't export your data. Try again or contact support."
- "Import incomplete. Some rows were skipped due to formatting errors."

**Why it works**: Specific about what failed and how to fix

---

## Conflict & State Errors

### Duplicate Entry

**Pattern**: "This [item] already exists. [Alternative action]"

**Examples**:
- "A project with this name already exists. Try a different name."
- "This item is already in your cart."
- "You've already invited this person to your team."

**Why it works**: Clear about the conflict

---

### Concurrent Edit Conflict

**Pattern**: "Someone else edited this [item] while you were working. [What to do]"

**Examples**:
- "Someone else saved changes to this file while you were editing. Refresh to see their changes."
- "This project was updated by another team member. Reload to get the latest version."

**Why it works**: Explains the conflict, suggests resolution

---

### Dependencies/Can't Delete

**Pattern**: "You can't delete this [item] because [reason]. [What to do]"

**Examples**:
- "You can't delete this folder because it contains files. Remove the files first or delete the entire folder."
- "This category can't be deleted because products are using it. Reassign the products first."

**Why it works**: Explains dependency and how to resolve

---

### State Mismatch

**Pattern**: "This [item] is already [state]. [What this means]"

**Examples**:
- "This project is already archived. Unarchive it to make changes."
- "You've already subscribed to this newsletter."
- "This task is already marked as complete."

**Why it works**: Clear about current state

---

## Special Contexts

### Age Restriction

**Pattern**: "You must be [age] or older to [action]."

**Examples**:
- "You must be 13 or older to create an account."
- "This content is restricted to users 18 and older."

**Why it works**: Clear legal requirement

---

### Location Restriction

**Pattern**: "This [feature/content] is not available in your location."

**Examples**:
- "This feature is not available in your country."
- "This content is restricted in your region."
- "We don't currently support payments in your location. We're working on it."

**Why it works**: Clear about restriction, shows you're working on it

---

### Browser/Device Not Supported

**Pattern**: "This [feature] is not supported on [browser/device]. [Alternative]"

**Examples**:
- "This feature is not supported in your browser. Please use Chrome, Firefox, or Safari."
- "File uploads are not available on mobile. Use a desktop browser."
- "This browser version is outdated. Please update to the latest version."

**Why it works**: Specific about limitation and solution

---

## Error Message Don'ts

**Avoid**:
- **Technical jargon**: "500 error", "null reference exception"
- **Blaming the user**: "You did X wrong"
- **Vague messages**: "Error occurred"
- **Humor in serious situations**: "Oopsie! Something broke!"
- **All caps**: "ERROR: FAILED"
- **Negative framing**: "You can't..." (use "To do this, you need...")

---

## Error Message Checklist

Before shipping an error message, verify:

- [ ] Does it explain what happened in plain language?
- [ ] Does it tell users what to do next?
- [ ] Is the tone calm and helpful (not blaming)?
- [ ] Is it specific (not just "error" or "failed")?
- [ ] Does it offer a recovery option or alternative?
- [ ] Is it short (1-3 sentences)?
- [ ] Would I understand this if I were a new user?

---

## Error Recovery Patterns

**Always provide a way forward:**

1. **Retry**: "Try again"
2. **Go back**: "Return to homepage"
3. **Contact support**: "Contact support if this continues"
4. **Alternative path**: "Try a different method"
5. **Recovery option**: "Reset your password"

**Never leave users stuck with no path forward.**

---

## Summary

**Great error messages are**:
- Clear about what happened
- Specific about what's wrong
- Helpful with next steps
- Empathetic in tone
- Brief and scannable

**Use the formula**: [What happened] + [Why (if helpful)] + [What to do]

Example: "We couldn't save your changes. Your internet connection was lost. Please reconnect and try again."
