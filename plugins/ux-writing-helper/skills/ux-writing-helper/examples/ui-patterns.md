# Common UI Copy Patterns

Reusable copy patterns for common UI elements. Use these as templates and adapt them to your specific context.

## Call-to-Action Buttons

### Primary Actions (Main Goal)

Use strong, specific verbs that describe the action and outcome.

**Account creation**:
- "Create account"
- "Sign up"
- "Get started"
- "Start free trial"

**Saving changes**:
- "Save changes"
- "Save"
- "Save and continue"
- "Update profile"

**Continuing a flow**:
- "Continue"
- "Next"
- "Save and continue"
- "Proceed to checkout"

**Submitting forms**:
- "Send message"
- "Submit application"
- "Create project"
- "Add payment method"

**Downloading**:
- "Download report"
- "Export data"
- "Download invoice"
- "Save to device"

---

### Secondary Actions (Alternative Option)

Less prominent, but still clear about what happens.

**Going back**:
- "Go back"
- "Back to dashboard"
- "Return to home"
- "Keep editing"

**Canceling**:
- "Cancel"
- "Never mind"
- "Close"
- "Dismiss"

**Skipping optional steps**:
- "Skip for now"
- "Skip this step"
- "Do this later"
- "Remind me later"

**Alternative paths**:
- "Use email instead"
- "Try another method"
- "Upload different file"

---

### Destructive Actions (Permanent or High-Risk)

Be very specific and include severity when appropriate.

**Deleting**:
- "Delete account"
- "Delete project"
- "Remove photo"
- "Delete permanently"

**Leaving/Exiting**:
- "Leave team"
- "Cancel subscription"
- "Close without saving"
- "Discard changes"

**Confirming destructive actions**:
- "Yes, delete"
- "Delete permanently"
- "Remove from team"
- "Cancel subscription"

---

## Form Fields

### Labels

Keep labels short, descriptive, and in sentence case. No colons.

**Personal information**:
- "First name"
- "Last name"
- "Email address"
- "Phone number"
- "Date of birth"

**Account information**:
- "Username"
- "Password"
- "Confirm password"
- "Profile photo"

**Address**:
- "Street address"
- "City"
- "State or province"
- "Postal code"
- "Country"

**Payment**:
- "Card number"
- "Expiration date"
- "Security code"
- "Cardholder name"
- "Billing address"

---

### Placeholder Text

Show examples, not instructions. Use realistic sample data.

**Email**:
- "name@example.com"

**Phone**:
- "(555) 123-4567"
- "+1 (555) 123-4567"

**URLs**:
- "https://example.com"
- "mycompany.com"

**Search**:
- "Search projects..."
- "Type to search..."

**Text areas**:
- "Describe your issue..." (light hint)
- "Optional: Add any details that might help..." (if optional)

**Don't use placeholders for**:
- Instructions: "Enter your email" (use helper text instead)
- Required field indicators: "(Required)" (use asterisk)
- Format requirements: "MM/DD/YYYY" (show example date instead)

---

### Helper Text

Provide guidance below the field. Keep it brief.

**Password**:
- "At least 8 characters and include a number"
- "Must include at least 8 characters, one number, and one symbol"

**Privacy assurance**:
- "We'll never share your email with anyone"
- "Your information is encrypted and secure"

**Format examples**:
- "Use your work email if you have one"
- "We'll use this to send you order updates"

**Optional fields**:
- "Optional: Add a description to help your team"

---

### Error Text (Inline Validation)

Explain what's wrong and how to fix it. Use red text and error icons.

**Required fields**:
- "This field is required"
- "Please enter your email address"

**Format errors**:
- "Please enter a valid email address"
- "Phone number must be 10 digits"
- "This URL is not valid"

**Availability errors**:
- "This username is already taken"
- "This email is already registered. Try signing in instead."

**Length/content requirements**:
- "Password must be at least 8 characters"
- "Bio must be less than 160 characters"
- "Username can only contain letters, numbers, and underscores"

---

### Success Indicators

Show when input is valid (green checkmark).

- "Available" (for usernames)
- "Valid email"
- "Strong password"

---

## Navigation

### Main Navigation

Clear, scannable labels that match page titles.

**Single words** (preferred):
- "Dashboard"
- "Projects"
- "Team"
- "Settings"
- "Help"

**Two words** (if needed):
- "My account"
- "Team members"
- "Billing history"
- "Activity log"

**Action-oriented** (for tools/features):
- "Create project"
- "Invite team"
- "View reports"

---

### Breadcrumbs

Show the path to current page. Use "/" or ">" as separator.

**Format**: Home / Projects / Project Name / Settings

**Examples**:
- "Dashboard / Team / Team settings"
- "Projects / Marketing Website / Files"
- "Account / Billing / Payment methods"

---

### Tabs

Noun-based labels for content sections.

**Profile sections**:
- "Overview"
- "Activity"
- "Settings"
- "History"

**Settings sections**:
- "General"
- "Privacy"
- "Notifications"
- "Billing"

**Content sections**:
- "Details"
- "Members"
- "Files"
- "Comments"

---

## Modals & Dialogs

### Modal Titles

Use title case or sentence case (be consistent). Be specific about the action.

**Creating**:
- "Create New Project"
- "Add Team Member"
- "Upload File"

**Editing**:
- "Edit Profile"
- "Change Password"
- "Update Payment Method"

**Confirming**:
- "Delete Project?"
- "Leave Team?"
- "Cancel Subscription?"

---

### Modal Body Text

Explain what's happening and what the user should do. Keep it brief (1-3 sentences).

**Information modals**:
- "Your password has been successfully changed. You can now use it to sign in."

**Confirmation modals**:
- "Are you sure you want to delete this project? This action cannot be undone. All files will be permanently deleted."

**Input modals**:
- "Enter the new project name. You can change this later in project settings."

---

### Modal Buttons

Match the title and action. Primary button on right (Western conventions).

**Create modals**:
- [Cancel] [Create project]

**Delete modals**:
- [Cancel] [Delete permanently]

**Save modals**:
- [Cancel] [Save changes]

**Cancel modals**:
- [Keep subscription] [Cancel subscription]

---

## Search & Filters

### Search Placeholders

Describe what can be searched.

- "Search projects..."
- "Find team members..."
- "Search by name or email..."
- "Type to search..."

---

### Search Results

**Results count**:
- "23 results for 'design'"
- "Showing 1-10 of 45 results"

**No results**:
- "No results for 'xyz'. Try different keywords or check your spelling."
- "We couldn't find anything matching 'xyz'."

**Suggested alternatives**:
- "No results for 'laptop'. Did you mean 'desktop'?"
- "No results. Try searching for 'projects' or 'files' instead."

---

### Filter Labels

Be specific about what's being filtered.

**Dropdowns**:
- "Filter by status"
- "Sort by date"
- "Show only..."

**Filter chips** (selected filters):
- "Status: Active"
- "Date: Last 30 days"
- "Team: Marketing"

**Clear filters**:
- "Clear all filters"
- "Reset"
- "Clear"

---

## Empty States

### First-Time Empty States

Encourage the first action. Explain why it's empty and what to do.

**Projects**:
- "No projects yet. Create your first project to get started."

**Team members**:
- "You haven't invited anyone yet. Add team members to start collaborating."

**Files**:
- "No files uploaded. Drag and drop files here or click 'Upload'."

---

### Cleared/Completed Empty States

Celebrate or acknowledge the state.

**Inbox**:
- "You're all caught up! No new messages."
- "Inbox zero—nicely done!"

**To-do list**:
- "All done! You've completed all your tasks."

**Trash**:
- "Trash is empty."

---

### Filtered Empty States

Explain that it's empty due to filters, not truly empty.

- "No results match your filters. Try adjusting your filter settings."
- "No active projects. View 'All projects' to see completed ones."

---

## Loading States

### Generic Loading

Tell users what's loading.

- "Loading..."
- "Loading your dashboard..."
- "Loading projects..."

---

### Action-Specific Loading

Explain what's happening during the action.

**Uploading**:
- "Uploading your file..."
- "Uploading... This may take a minute for large files."

**Processing**:
- "Processing payment..."
- "Creating your account..."
- "Generating report..."

**Syncing**:
- "Syncing your changes..."
- "Saving..."

---

### Progress Indicators

Show progress when possible.

- "Uploading... 45% complete"
- "Step 2 of 4"
- "Installing updates... 3 minutes remaining"

---

## Confirmation Messages (Toasts/Snackbars)

### Success Confirmations

Brief, specific, positive.

**Saved**:
- "Changes saved"
- "Profile updated"
- "Settings saved"

**Created**:
- "Project created"
- "Team member added"
- "File uploaded successfully"

**Deleted**:
- "Project deleted"
- "Photo removed"

**Sent**:
- "Message sent"
- "Invitation sent"
- "Email sent"

---

### Action Confirmations with Undo

Allow users to undo accidental actions.

- "Project deleted. [Undo]"
- "Email archived. [Undo]"
- "3 items moved to trash. [Undo]"

---

## Tooltips

### Informational Tooltips

Explain what something is or does. Under 150 characters.

**Icons**:
- "Verified badge confirms your identity to other users"
- "Private project—only you can see this"
- "Last saved 2 minutes ago"

**Features**:
- "Pro feature—upgrade to access"
- "Locked until you complete previous steps"

**Status indicators**:
- "Online"
- "Busy—will not receive notifications"
- "Offline—last seen 2 hours ago"

---

### Help Tooltips

Provide context or explain why.

- "We use this to keep your account secure"
- "This helps us personalize your experience"
- "Requires admin permissions"

---

## Dropdown Menus

### Menu Items

Action-oriented, clear about what will happen.

**File operations**:
- "Rename"
- "Duplicate"
- "Move to..."
- "Download"
- "Delete"

**Sharing**:
- "Copy link"
- "Share with team"
- "Make public"
- "Make private"

**More actions**:
- "View details"
- "Edit"
- "Archive"
- "Mark as complete"

---

### Menu Sections

Group related actions with section headers.

**Example**:
```
Edit
- Rename
- Duplicate
- Move to...

Share
- Copy link
- Share with team

---
Delete (destructive, separated)
```

---

## Date & Time

### Relative Time

User-friendly for recent times.

- "Just now"
- "2 minutes ago"
- "1 hour ago"
- "Yesterday"
- "Last week"

---

### Absolute Time

Clear, specific dates.

- "January 15, 2024"
- "Jan 15"
- "Today at 2:30 PM"
- "Tomorrow at 9:00 AM"

---

### Date Ranges

- "Jan 1 - Jan 31, 2024"
- "Last 7 days"
- "Last 30 days"
- "All time"

---

## Status Indicators

### Account/Item Status

Clear, scannable labels.

**Account status**:
- "Active"
- "Inactive"
- "Pending"
- "Suspended"

**Project status**:
- "In progress"
- "Completed"
- "On hold"
- "Archived"

**Payment status**:
- "Paid"
- "Pending"
- "Failed"
- "Refunded"

---

### User Status

- "Online"
- "Away"
- "Busy"
- "Offline"
- "Active now"
- "Last seen 5 minutes ago"

---

## Settings

### Setting Labels

Clear, descriptive names.

**Toggles**:
- "Enable notifications"
- "Dark mode"
- "Auto-save"
- "Show preview"

**Options**:
- "Language"
- "Time zone"
- "Default view"
- "Email frequency"

---

### Setting Descriptions

Explain what the setting does.

- "Receive email notifications when someone mentions you"
- "Automatically save your work every 5 minutes"
- "Use dark mode during evening hours (6 PM - 6 AM)"

---

## Summary

**Key patterns across all UI elements**:

1. **Be specific**: "Save changes" not "OK"
2. **Start with verbs for actions**: "Create project" not "New project"
3. **Use sentence case**: "Add to cart" not "Add To Cart"
4. **Provide context**: "No results for 'laptop'" not just "No results"
5. **Be concise**: "Continue" not "Click to continue"
6. **Think user-first**: "Your profile" not "User profile"

Adapt these patterns to your specific product and brand voice, but maintain consistency across your entire UI.
