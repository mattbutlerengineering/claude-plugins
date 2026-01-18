---
name: borderlands-shift-codes
description: Helps users discover and track Borderlands 4 SHiFT codes for Golden Keys and other rewards. Use when users mention Borderlands, shift codes, golden keys, or want to find game codes.
allowed-tools: WebSearch, WebFetch, Read, Write, Bash
---

# Borderlands 4 SHiFT Codes Helper

This skill helps you find, track, and redeem SHiFT codes for Borderlands 4. SHiFT codes unlock Golden Keys (for the Golden Chest containing high-quality loot) and cosmetic rewards.

## What Are SHiFT Codes?

SHiFT codes are 25-character alphanumeric codes in the format `XXXXX-XXXXX-XXXXX-XXXXX-XXXXX` that Gearbox releases for free in-game rewards:

- **Golden Keys**: Open the Golden Chest in Sanctuary for level-appropriate purple/legendary gear
- **Cosmetics**: Character skins, weapon skins, heads
- **Seasonal Items**: Event-specific rewards

**Important**: Each code can only be redeemed **once per SHiFT account**. Most codes expire within hours to days, though some are permanent.

## How I Can Help

### 1. Find Current Codes
I'll search trusted gaming news sources and community sites for the latest active Borderlands 4 SHiFT codes. I'll tell you:
- The code itself
- What reward it gives
- Whether it's still active (if known)
- When it expires (if known)

### 2. Track Your Codes
I can help you maintain a local tracking file (`~/.borderlands-shift-codes.json`) to remember which codes you've already redeemed, so you don't waste time on duplicates.

### 3. Redeem Codes (Browser Automation)
If you're running Claude Code with `--chrome` mode, I can automate the redemption process on the Gearbox SHiFT website.

## Quick Commands

- `/borderlands-shift-codes:get-codes` - Search for current active codes
- `/borderlands-shift-codes:redeem` - Automate code redemption (requires `--chrome`)
- `/borderlands-shift-codes:track-codes` - View and manage your tracked codes

## Finding Codes

When searching for codes, I'll check these reliable sources:

**Official Sources**:
- Gearbox/Borderlands official Twitter/X accounts
- https://shift.gearboxsoftware.com

**Gaming News Sites**:
- Game8.co
- MentalMars.com
- GameSpot
- Dexerto
- GamesRadar
- PCGamesN
- Polygon

**Community Sources**:
- Reddit r/borderlands, r/borderlands4
- Borderlands Discord servers

## Code Format

Valid SHiFT codes follow this pattern:
- 25 characters total (excluding dashes)
- 5 groups of 5 alphanumeric characters
- Separated by dashes
- Example: `WZCKB-6B65T-TWHKJ-BJTJB-J39HR`

## Redemption Methods

### Option 1: In-Game (Recommended)
1. Open the game menu
2. Go to Social → SHiFT tab
3. Enter the code
4. Check your Mail tab for rewards

### Option 2: Gearbox Website
1. Go to https://shift.gearboxsoftware.com/rewards
2. Log in with your SHiFT account
3. Select "Borderlands 4" and your platform
4. Enter the code and click Redeem

### Option 3: Automated (with Claude Code)
Run `/borderlands-shift-codes:redeem` in Claude Code with `--chrome` mode enabled.

## Tracking File Format

Your codes are stored in `~/.borderlands-shift-codes.json`:

```json
{
  "platform": "steam",
  "redeemedCodes": [
    {
      "code": "XXXXX-XXXXX-XXXXX-XXXXX-XXXXX",
      "reward": "3 Golden Keys",
      "redeemedAt": "2026-01-18T12:00:00Z"
    }
  ],
  "lastCheck": "2026-01-18T12:00:00Z"
}
```

## Tips

- **Act fast**: Most codes expire within 24-48 hours
- **Check regularly**: New codes are released during streams, events, and promotions
- **Follow official accounts**: @Borderlands and @GearboxOfficial on Twitter/X
- **Join the community**: Reddit and Discord often share codes first

## Example Interaction

**User**: "Find me some Borderlands 4 shift codes"

**Assistant**: I'll search for current Borderlands 4 SHiFT codes.

*[Uses WebSearch to find active codes]*

Here are the currently active Borderlands 4 SHiFT codes:

| Code | Reward | Expires |
|------|--------|---------|
| XXXXX-XXXXX-XXXXX-XXXXX-XXXXX | 3 Golden Keys | Jan 20, 2026 |
| YYYYY-YYYYY-YYYYY-YYYYY-YYYYY | 1 Golden Key | Never |

**To redeem**:
1. In-game: Social → SHiFT → Enter code
2. Website: shift.gearboxsoftware.com/rewards

Want me to help you track these codes or automate redemption?

---

## Related Resources

- [sources.md](sources.md) - Full list of code sources
- [redemption-guide.md](redemption-guide.md) - Detailed redemption instructions
