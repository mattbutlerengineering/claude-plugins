---
description: Search the web for current active Borderlands 4 SHiFT codes
allowed-tools: WebSearch, WebFetch, Read, Write
---

# Get Borderlands 4 SHiFT Codes

Searches the web for currently active Borderlands 4 SHiFT codes and displays them with their rewards and expiration status.

## Instructions

When this command is invoked:

### 1. Search for Current Codes

Use WebSearch to find the latest Borderlands 4 SHiFT codes:

```
Query: "borderlands 4 shift codes 2026" OR "borderlands 4 golden keys"
```

Focus on these reliable sources (check 2-3 for cross-reference):
- game8.co
- mentalmars.com
- gamesradar.com
- dexerto.com
- pcgamesn.com

### 2. Fetch and Parse Results

Use WebFetch on the top results to extract:
- The actual codes (format: `XXXXX-XXXXX-XXXXX-XXXXX-XXXXX`)
- Reward description (e.g., "3 Golden Keys", "Weapon Skin")
- Expiration date/status if available
- Source of the code

### 3. Validate Code Format

Ensure codes match the expected pattern:
- 25 alphanumeric characters
- 5 groups of 5 characters
- Separated by dashes

### 4. Check Against Tracked Codes

Read the user's tracking file at `~/.borderlands-shift-codes.json` if it exists:
- Mark codes the user has already redeemed
- Highlight new codes they haven't seen

### 5. Display Results

Present codes in a clear table format:

```
## Active Borderlands 4 SHiFT Codes

| Code | Reward | Expires | Status |
|------|--------|---------|--------|
| XXXXX-XXXXX-XXXXX-XXXXX-XXXXX | 3 Golden Keys | Jan 20, 2026 | NEW |
| YYYYY-YYYYY-YYYYY-YYYYY-YYYYY | 1 Golden Key | Never | Redeemed |

**Sources checked**: Game8, MentalMars, GamesRadar
**Last updated**: [current date/time]
```

### 6. Provide Redemption Instructions

After displaying codes, include quick redemption instructions:

```
## How to Redeem

**In-Game**: Social → SHiFT → Enter code → Check Mail

**Website**: shift.gearboxsoftware.com/rewards

**Automated**: Run `/borderlands-shift-codes:redeem` (requires --chrome mode)
```

### 7. Offer Next Steps

Ask if the user wants to:
- Track these codes locally
- Automate redemption (if in --chrome mode)
- Search for more codes

## Example Output

```
## Active Borderlands 4 SHiFT Codes (January 2026)

I found 4 active codes from trusted sources:

| Code | Reward | Expires | Status |
|------|--------|---------|--------|
| `WZCKB-6B65T-TWHKJ-BJTJB-J39HR` | 3 Golden Keys | Jan 20, 2026 | NEW |
| `KH5TB-FRKBB-5WFBT-TTTJT-6J96Z` | 1 Golden Key | Never | NEW |
| `ZFKJ3-TT3BB-JTBJT-T3JJT-JWX9H` | 5 Golden Keys | Jan 19, 2026 | Redeemed |
| `HXKBT-XJ6FR-WBRKJ-J3TTB-RSBHR` | Weapon Skin | Feb 1, 2026 | NEW |

**Sources**: Game8, MentalMars (checked Jan 18, 2026)

### How to Redeem

**In-Game** (Recommended):
1. Go to Social → SHiFT tab
2. Enter code with dashes
3. Check Mail tab for rewards

**Website**: https://shift.gearboxsoftware.com/rewards

**Automated**: `/borderlands-shift-codes:redeem` (requires --chrome)

---

Would you like me to:
- Track these codes in your local file?
- Automate redemption? (requires --chrome mode)
```

## Error Handling

### No Codes Found
```
I searched multiple sources but couldn't find any active Borderlands 4 SHiFT codes right now.

This could mean:
- No new codes have been released recently
- Recent codes may have expired

**Tips**:
- Follow @Borderlands on Twitter for announcements
- Check back during game streams or events
- Try searching Reddit: reddit.com/r/borderlands4
```

### Search Errors
```
I encountered an error searching for codes. This might be due to:
- Network connectivity issues
- Rate limiting from search providers

Please try again in a few minutes, or check these sources manually:
- https://game8.co (search "Borderlands 4 shift codes")
- https://mentalmars.com/game-news/borderlands-4-shift-codes/
```

## Notes

- Always cite sources when displaying codes
- Warn users that codes may have expired since publication
- Remind users that each code can only be used once per account
- Update the tracking file's `lastCheck` timestamp after searching
