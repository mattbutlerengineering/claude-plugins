---
description: View and manage your tracked Borderlands 4 SHiFT codes
allowed-tools: Read, Write
---

# Track SHiFT Codes

Manages a local tracking file to remember which Borderlands 4 SHiFT codes you've redeemed.

## Tracking File Location

`~/.borderlands-shift-codes.json`

## Instructions

When this command is invoked, check for arguments:

### No Arguments: Show Status

Display the current tracking status:

1. Read `~/.borderlands-shift-codes.json`
2. If file doesn't exist, offer to create it
3. Display summary:

```
## SHiFT Code Tracker

**Platform**: Steam
**Last check**: January 18, 2026 at 2:30 PM
**Total codes tracked**: 12
**Redeemed**: 10
**Pending**: 2

### Pending Codes (not yet redeemed)

| Code | Reward | Added |
|------|--------|-------|
| XXXXX-XXXXX-XXXXX-XXXXX-XXXXX | 3 Golden Keys | Jan 18, 2026 |
| YYYYY-YYYYY-YYYYY-YYYYY-YYYYY | Weapon Skin | Jan 17, 2026 |

### Recently Redeemed

| Code | Reward | Redeemed |
|------|--------|----------|
| ZZZZZ-ZZZZZ-ZZZZZ-ZZZZZ-ZZZZZ | 5 Golden Keys | Jan 16, 2026 |
| AAAAA-AAAAA-AAAAA-AAAAA-AAAAA | 1 Golden Key | Jan 15, 2026 |

---

**Commands**:
- Add a code: `/borderlands-shift-codes:track-codes add CODE`
- Mark redeemed: `/borderlands-shift-codes:track-codes redeem CODE`
- Set platform: `/borderlands-shift-codes:track-codes set-platform steam`
- Clear history: `/borderlands-shift-codes:track-codes clear`
```

### `add CODE` - Add a New Code

Add a code to track:

1. Validate the code format (XXXXX-XXXXX-XXXXX-XXXXX-XXXXX)
2. Check if code already exists in tracking file
3. Add to tracking file with status "pending"
4. Confirm addition

```
User: /borderlands-shift-codes:track-codes add WZCKB-6B65T-TWHKJ-BJTJB-J39HR

Claude: ✅ Added code to tracker:

Code: WZCKB-6B65T-TWHKJ-BJTJB-J39HR
Status: Pending
Added: January 18, 2026

Tip: Run `/borderlands-shift-codes:redeem` to redeem automatically (requires --chrome mode)
```

### `redeem CODE` - Mark Code as Redeemed

Mark a code as redeemed manually:

1. Find the code in tracking file
2. Update status to "redeemed"
3. Add redemption timestamp
4. Confirm update

```
User: /borderlands-shift-codes:track-codes redeem WZCKB-6B65T-TWHKJ-BJTJB-J39HR

Claude: ✅ Marked as redeemed:

Code: WZCKB-6B65T-TWHKJ-BJTJB-J39HR
Redeemed: January 18, 2026 at 3:15 PM
```

### `set-platform PLATFORM` - Set Gaming Platform

Set or update the user's gaming platform:

Valid platforms:
- `ps5` or `playstation` - PlayStation 5
- `xbox` - Xbox Series X/S
- `steam` - Steam (PC)
- `epic` - Epic Games Store (PC)

```
User: /borderlands-shift-codes:track-codes set-platform steam

Claude: ✅ Platform set to: Steam

This will be used for automated redemption.
```

### `clear` - Clear Tracking History

Clear all tracked codes (with confirmation):

```
User: /borderlands-shift-codes:track-codes clear

Claude: ⚠️ This will delete all tracked codes from your history.

Are you sure? This cannot be undone.

Type "yes" to confirm or "no" to cancel.
```

### `export` - Export Codes

Export codes to a simple text format:

```
User: /borderlands-shift-codes:track-codes export

Claude: ## Exported Codes

### Pending
WZCKB-6B65T-TWHKJ-BJTJB-J39HR
YYYYY-YYYYY-YYYYY-YYYYY-YYYYY

### Redeemed
ZZZZZ-ZZZZZ-ZZZZZ-ZZZZZ-ZZZZZ
AAAAA-AAAAA-AAAAA-AAAAA-AAAAA

(Copy these to save elsewhere)
```

## Tracking File Format

```json
{
  "platform": "steam",
  "lastCheck": "2026-01-18T14:30:00Z",
  "codes": [
    {
      "code": "WZCKB-6B65T-TWHKJ-BJTJB-J39HR",
      "reward": "3 Golden Keys",
      "status": "pending",
      "addedAt": "2026-01-18T12:00:00Z",
      "source": "Game8"
    },
    {
      "code": "ZZZZZ-ZZZZZ-ZZZZZ-ZZZZZ-ZZZZZ",
      "reward": "5 Golden Keys",
      "status": "redeemed",
      "addedAt": "2026-01-15T10:00:00Z",
      "redeemedAt": "2026-01-16T08:30:00Z",
      "source": "MentalMars"
    },
    {
      "code": "BBBBB-BBBBB-BBBBB-BBBBB-BBBBB",
      "reward": "1 Golden Key",
      "status": "expired",
      "addedAt": "2026-01-10T09:00:00Z",
      "expiredAt": "2026-01-12T00:00:00Z",
      "source": "Reddit"
    }
  ]
}
```

## Status Values

- `pending` - Code has been added but not yet redeemed
- `redeemed` - Code has been successfully redeemed
- `expired` - Code was found to be expired when redemption was attempted
- `invalid` - Code format was incorrect or code was rejected

## Error Handling

### File Doesn't Exist
```
No tracking file found.

Would you like me to create one? This will store your SHiFT codes locally at:
~/.borderlands-shift-codes.json

Type "yes" to create or provide a code to add.
```

### Invalid Code Format
```
Invalid code format: "INVALID"

SHiFT codes must be:
- 25 characters (excluding dashes)
- 5 groups of 5 alphanumeric characters
- Separated by dashes

Example: XXXXX-XXXXX-XXXXX-XXXXX-XXXXX
```

### Code Already Tracked
```
This code is already in your tracker:

Code: WZCKB-6B65T-TWHKJ-BJTJB-J39HR
Status: Pending
Added: January 15, 2026

Did you want to mark it as redeemed? Use:
/borderlands-shift-codes:track-codes redeem WZCKB-6B65T-TWHKJ-BJTJB-J39HR
```

### Invalid Platform
```
Invalid platform: "nintendo"

Valid platforms are:
- ps5 (PlayStation 5)
- xbox (Xbox Series X/S)
- steam (Steam - PC)
- epic (Epic Games Store - PC)
```

## Integration with Other Commands

- **get-codes**: Automatically checks tracking file to show which codes are new
- **redeem**: Uses tracking file to know which codes to redeem and updates it after
- **Both commands**: Update `lastCheck` timestamp when used
