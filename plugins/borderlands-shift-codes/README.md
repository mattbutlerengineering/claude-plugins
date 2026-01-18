# Borderlands 4 SHiFT Codes Plugin

A Claude Code plugin to discover, track, and redeem Borderlands 4 SHiFT codes for Golden Keys and other rewards.

## Features

- **Find Codes**: Search the web for current active SHiFT codes
- **Track Codes**: Maintain a local file of redeemed/pending codes
- **Auto-Redeem**: Browser automation to redeem codes on the Gearbox website (requires `--chrome` mode)
- **Cross-Reference**: Check multiple trusted sources to verify codes

## Installation

### From Marketplace

```bash
# Add the marketplace (if not already added)
/plugin marketplace add mattbutlerengineering/claude-plugins

# Install the plugin
/plugin install borderlands-shift-codes
```

### From Local Directory

```bash
/plugin install ./plugins/borderlands-shift-codes
```

## Commands

### `/borderlands-shift-codes:get-codes`

Search the web for currently active Borderlands 4 SHiFT codes.

```
/borderlands-shift-codes:get-codes
```

Returns a table of active codes with:
- The code itself
- Reward description (Golden Keys, cosmetics, etc.)
- Expiration date (if known)
- Whether you've already redeemed it

### `/borderlands-shift-codes:redeem`

Automate code redemption using browser automation.

**Requires**: Claude Code running with `--chrome` flag

```bash
# Start Claude Code with browser mode
claude --chrome

# Then run the redeem command
/borderlands-shift-codes:redeem
```

This will:
1. Open the Gearbox SHiFT website
2. Check if you're logged in
3. Redeem each unredeemed code from your tracking file
4. Update the tracking file with results

### `/borderlands-shift-codes:track-codes`

View and manage your tracked codes.

```
# View all tracked codes
/borderlands-shift-codes:track-codes

# Add a code to track
/borderlands-shift-codes:track-codes add XXXXX-XXXXX-XXXXX-XXXXX-XXXXX

# Mark a code as redeemed
/borderlands-shift-codes:track-codes redeem XXXXX-XXXXX-XXXXX-XXXXX-XXXXX

# Set your gaming platform
/borderlands-shift-codes:track-codes set-platform steam

# Clear all tracking history
/borderlands-shift-codes:track-codes clear
```

## Configuration

Your settings and tracked codes are stored in `~/.borderlands-shift-codes.json`:

```json
{
  "platform": "steam",
  "lastCheck": "2026-01-18T14:30:00Z",
  "codes": [
    {
      "code": "XXXXX-XXXXX-XXXXX-XXXXX-XXXXX",
      "reward": "3 Golden Keys",
      "status": "redeemed",
      "redeemedAt": "2026-01-18T12:00:00Z"
    }
  ]
}
```

### Supported Platforms

- `ps5` - PlayStation 5
- `xbox` - Xbox Series X/S
- `steam` - Steam (PC)
- `epic` - Epic Games Store (PC)

## What Are SHiFT Codes?

SHiFT codes are 25-character alphanumeric codes that Gearbox releases for free in-game rewards:

- **Golden Keys**: Open the Golden Chest for high-quality, level-appropriate loot
- **Cosmetics**: Character skins, weapon skins, heads
- **Seasonal Items**: Event-specific rewards

**Format**: `XXXXX-XXXXX-XXXXX-XXXXX-XXXXX`

**Important**: Each code can only be redeemed once per SHiFT account. Most codes expire within 24-72 hours.

## How to Redeem Manually

### In-Game (Recommended)
1. Open the game menu
2. Go to **Social** → **SHiFT** tab
3. Enter the code
4. Check your **Mail** tab for rewards

### Website
1. Go to https://shift.gearboxsoftware.com/rewards
2. Log in with your SHiFT account
3. Select "Borderlands 4" and your platform
4. Enter the code and click Redeem

## Code Sources

This plugin searches these trusted sources:

**Official**:
- @Borderlands on Twitter/X
- @GearboxOfficial on Twitter/X
- Gearbox Twitch streams

**Gaming News**:
- Game8.co
- MentalMars.com
- GamesRadar
- Dexerto
- PCGamesN
- Polygon

**Community**:
- Reddit r/borderlands, r/borderlands4

## Tips

- **Act fast**: Most codes expire within 24-48 hours
- **Check regularly**: New codes drop during streams and events
- **Follow official accounts**: @Borderlands and @GearboxOfficial for announcements
- **Track your codes**: Use the tracking feature to avoid trying duplicate codes

## Limitations

- **Requires login**: Automated redemption requires you to be logged into shift.gearboxsoftware.com
- **Code freshness**: Codes may have expired between publication and when you try to redeem
- **Rate limiting**: Both web searches and the SHiFT website may rate-limit rapid requests
- **Browser mode required**: Automated redemption only works with `claude --chrome`

## License

MIT License - see [LICENSE](LICENSE)

## Author

Matt Butler - [GitHub](https://github.com/mattbutlerengineering)

## Links

- [Gearbox SHiFT Website](https://shift.gearboxsoftware.com)
- [Official Borderlands Twitter](https://twitter.com/Borderlands)
- [Plugin Repository](https://github.com/mattbutlerengineering/claude-plugins)
