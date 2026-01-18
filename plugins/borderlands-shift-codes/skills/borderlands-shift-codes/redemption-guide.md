# SHiFT Code Redemption Guide

Complete instructions for redeeming Borderlands 4 SHiFT codes through all available methods.

## Prerequisites

### SHiFT Account
You need a free Gearbox SHiFT account to redeem codes:
1. Go to https://shift.gearboxsoftware.com
2. Click "Sign Up" or "Register"
3. Create account with email or link social accounts
4. **Important**: Link your gaming platform (PlayStation, Xbox, Steam, Epic) to your SHiFT account

### Platform Linking
1. Log into https://shift.gearboxsoftware.com
2. Go to Account Settings → Linked Accounts
3. Connect your gaming platform accounts
4. This allows rewards to transfer to your game

---

## Method 1: In-Game Redemption (Recommended)

The easiest method if you're already playing the game.

### Steps
1. **Open the game** and load into a character
2. **Access the menu** (ESC on PC, Options/Menu on console)
3. **Navigate to Social** tab
4. **Select SHiFT** sub-tab
5. **Enter the code** in the text field (include dashes)
6. **Press Submit/Redeem**
7. **Check your Mail tab** in the Social menu to claim rewards

### Tips
- Codes are entered with dashes: `XXXXX-XXXXX-XXXXX-XXXXX-XXXXX`
- Rewards appear in your in-game mailbox
- Golden Keys are automatically added to your inventory
- Cosmetics may need to be equipped manually

### Troubleshooting
- **"Invalid Code"**: Code may be expired or entered incorrectly
- **"Already Redeemed"**: You've used this code before
- **"Network Error"**: Check internet connection, try again later

---

## Method 2: Gearbox Website

Useful when you're away from the game or want to queue up rewards.

### Steps
1. **Go to** https://shift.gearboxsoftware.com/rewards
2. **Log in** with your SHiFT account
3. **Select the game**: Choose "Borderlands 4"
4. **Select your platform**: PlayStation, Xbox, Steam, or Epic
5. **Enter the code** in the redemption field
6. **Click "Check"** to verify the code
7. **Click "Redeem"** to claim the reward
8. **Launch the game** and check your Mail tab

### Tips
- You can redeem codes before launching the game
- Rewards sync when you next connect online
- The website shows your redemption history

### Troubleshooting
- **"Please log in"**: Session expired, log in again
- **"Platform not linked"**: Link your gaming account in Settings
- **Rate limited**: Wait a few minutes between redemptions

---

## Method 3: Automated Browser Redemption (Claude Code)

Use Claude Code with `--chrome` mode to automate website redemption.

### Prerequisites
- Claude Code installed
- Chrome browser installed
- `--chrome` flag enabled when starting Claude Code

### Starting Claude Code with Browser Mode
```bash
claude --chrome
```

### Using the Redeem Command
```
/borderlands-shift-codes:redeem
```

### What the Automation Does
1. Opens Chrome and navigates to the SHiFT rewards page
2. Checks if you're logged in (prompts you to log in if not)
3. Selects "Borderlands 4" as the game
4. Enters each unredeemed code from your tracking file
5. Selects your preferred platform
6. Clicks Redeem and waits for confirmation
7. Updates your local tracking file with redemption status

### Configuration
Before first use, set your platform preference:
```
/borderlands-shift-codes:track-codes set-platform steam
```

Available platforms: `ps5`, `xbox`, `steam`, `epic`

### Workflow Example
```
User: /borderlands-shift-codes:get-codes
[Claude finds 3 new codes]

User: /borderlands-shift-codes:redeem
[Claude automates redemption of all 3 codes]

User: /borderlands-shift-codes:track-codes
[Shows all codes marked as redeemed]
```

---

## Claiming Rewards In-Game

After redeeming codes (via any method):

### Golden Keys
1. Go to the **Golden Chest** in Sanctuary (or hub area)
2. Interact with the chest
3. Each opening costs **1 Golden Key**
4. Receive **2 random items** at your level
5. Items are typically purple (Epic) or higher quality

### Cosmetics
1. Open **Inventory** → **Customization**
2. New skins/heads appear in your collection
3. Select and equip as desired

### Other Rewards
- Check your **Mail tab** in the Social menu
- Some rewards auto-apply to your account
- Event items may have special claim locations

---

## Code Limits and Restrictions

### Per-Account Limits
- Each code can only be redeemed **once per SHiFT account**
- No limit on total codes you can redeem
- Some codes are platform-exclusive (rare)

### Expiration
- Most codes expire within **24-72 hours**
- Some codes are marked as **permanent/never expires**
- Expired codes show "Invalid Code" error
- No way to redeem expired codes

### Rate Limiting
- Website may limit rapid redemptions
- Wait 10-30 seconds between codes
- In-game has fewer restrictions

---

## Troubleshooting Common Issues

### "Code Invalid"
- Code may be expired
- Check for typos (0 vs O, 1 vs I)
- Verify you're entering with dashes
- Try a different redemption method

### "Code Already Redeemed"
- You've already used this code
- Check your tracking file
- This is per-account, not per-character

### "Platform Not Linked"
- Go to shift.gearboxsoftware.com → Settings
- Link your gaming platform account
- Re-try redemption

### "Network Error"
- Check your internet connection
- SHiFT servers may be down
- Try again in a few minutes

### "Rewards Not Appearing"
- Check the in-game Mail tab
- Restart the game
- Ensure you're online
- Wait a few minutes for sync

---

## Best Practices

1. **Redeem quickly**: Codes expire fast
2. **Check multiple sources**: Cross-reference to verify codes
3. **Track your codes**: Use the tracking feature to avoid duplicates
4. **Redeem in batches**: Save time by collecting codes then redeeming together
5. **Follow official channels**: Twitter/X and Twitch for first announcements
6. **Join the community**: Reddit and Discord share codes quickly
