---
description: Automate SHiFT code redemption using browser automation (requires --chrome mode)
allowed-tools: WebSearch, WebFetch, Read, Write, Bash, computer
---

# Redeem SHiFT Codes (Browser Automation)

Automates the redemption of Borderlands 4 SHiFT codes on the Gearbox website using browser automation.

## Prerequisites

- Claude Code must be running with `--chrome` flag
- User must have a SHiFT account at shift.gearboxsoftware.com
- User's gaming platform must be linked to their SHiFT account

## Instructions

When this command is invoked:

### 1. Check Browser Mode

First, verify that Claude Code is running with browser automation enabled:
- If not in `--chrome` mode, inform the user they need to restart with `claude --chrome`
- Provide manual redemption instructions as an alternative

### 2. Load Tracking File

Read the user's tracking file at `~/.borderlands-shift-codes.json`:
- Get the list of codes to redeem (those not marked as redeemed)
- Get the user's preferred platform (ps5, xbox, steam, epic)
- If no tracking file exists, ask user for codes to redeem

### 3. Check Platform Configuration

If no platform is set in the tracking file:
- Ask the user which platform they play on
- Save their preference to the tracking file

### 4. Navigate to SHiFT Website

Use browser automation to:
1. Open https://shift.gearboxsoftware.com/rewards
2. Wait for page to load completely

### 5. Check Login Status

Verify the user is logged in:
- Look for login/signup buttons (indicates not logged in)
- Look for account menu or username (indicates logged in)

If not logged in:
- Inform the user they need to log in
- Wait for user to complete login manually
- Prompt user to confirm when logged in

### 6. Redeem Each Code

For each unredeemed code in the tracking file:

1. **Select the game**:
   - Find the game selector dropdown
   - Select "Borderlands 4"

2. **Select the platform**:
   - Find the platform selector
   - Select the user's configured platform

3. **Enter the code**:
   - Find the code input field
   - Clear any existing text
   - Enter the 25-character code with dashes

4. **Submit the code**:
   - Click the "Check" or "Redeem" button
   - Wait for response (success/error message)

5. **Record the result**:
   - If successful: Mark code as redeemed in tracking file
   - If "already redeemed": Mark code as redeemed
   - If "invalid/expired": Mark code as expired
   - If error: Note the error and continue to next code

6. **Wait between codes**:
   - Pause 5-10 seconds between redemptions to avoid rate limiting

### 7. Update Tracking File

After processing all codes, update `~/.borderlands-shift-codes.json`:
- Mark successfully redeemed codes
- Record redemption timestamps
- Note any errors or expired codes

### 8. Report Results

Display a summary to the user:

```
## Redemption Results

| Code | Result |
|------|--------|
| XXXXX-XXXXX-... | ✅ Redeemed - 3 Golden Keys |
| YYYYY-YYYYY-... | ✅ Redeemed - 1 Golden Key |
| ZZZZZ-ZZZZZ-... | ❌ Expired |
| AAAAA-AAAAA-... | ⚠️ Already redeemed |

**Summary**: 2 codes redeemed, 1 expired, 1 already used

**Next step**: Launch Borderlands 4 and check your Mail tab to claim rewards!
```

## Example Workflow

```
User: /borderlands-shift-codes:redeem

Claude: I'll help you redeem your SHiFT codes automatically.

Checking browser mode... ✅ Chrome mode enabled

Loading your tracking file...
Found 3 unredeemed codes:
- WZCKB-6B65T-TWHKJ-BJTJB-J39HR (3 Golden Keys)
- KH5TB-FRKBB-5WFBT-TTTJT-6J96Z (1 Golden Key)
- HXKBT-XJ6FR-WBRKJ-J3TTB-RSBHR (Weapon Skin)

Your platform: Steam

Navigating to shift.gearboxsoftware.com/rewards...

[Browser opens and navigates]

Checking login status... ✅ Logged in as YourUsername

Redeeming code 1 of 3: WZCKB-6B65T-TWHKJ-BJTJB-J39HR
- Selecting Borderlands 4...
- Selecting Steam platform...
- Entering code...
- Clicking Redeem...
✅ Success! 3 Golden Keys added to your account.

[Continues for remaining codes]

## Redemption Complete!

| Code | Result |
|------|--------|
| WZCKB-6B65T-... | ✅ 3 Golden Keys |
| KH5TB-FRKBB-... | ✅ 1 Golden Key |
| HXKBT-XJ6FR-... | ✅ Weapon Skin |

All 3 codes redeemed successfully!

Launch Borderlands 4 and check your Mail tab to claim your rewards.
```

## Error Handling

### Not in Chrome Mode
```
Browser automation requires --chrome mode.

To use automated redemption:
1. Exit Claude Code
2. Restart with: claude --chrome
3. Run this command again

**Alternative**: Redeem codes manually at https://shift.gearboxsoftware.com/rewards
```

### Not Logged In
```
You need to log in to your SHiFT account.

I've opened the SHiFT website. Please:
1. Click "Log In" or "Sign In"
2. Enter your credentials
3. Complete any 2FA if required
4. Tell me when you're logged in

(Type "done" when ready to continue)
```

### Rate Limited
```
The SHiFT website is rate limiting requests.

I'll wait 60 seconds before continuing...

Alternatively, you can:
- Redeem remaining codes in-game
- Try again later
```

### Code Errors
```
Code XXXXX-XXXXX-... failed:
- Error: "This code has expired"

This code is no longer valid. Moving to next code...
```

## Website Element Selectors

For browser automation, look for these elements:
- Game selector: dropdown with "Borderlands 4" option
- Platform selector: buttons or dropdown for PS5/Xbox/Steam/Epic
- Code input: text field for 25-character code
- Submit button: "Check", "Redeem", or "Submit" button
- Success message: confirmation text or green indicator
- Error message: error text or red indicator

## Safety Notes

- Never store or transmit user credentials
- Only interact with the official shift.gearboxsoftware.com domain
- Respect rate limits to avoid account issues
- Always confirm actions with the user before proceeding
