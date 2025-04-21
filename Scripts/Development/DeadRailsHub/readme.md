# DeadRailsHub Loader

## Installation
```
-- Paste this in your Roblox executor
loadstring(game:HttpGet("https://raw.githubusercontent.com/MappleGaming208/Magic/main/Scripts/Development/DeadRailsHub/obj.luau"))()
```

## Error Guide
| Error Type | Solution |
|------------|----------|
| HTTP Error | Check URL availability |
| Execution Error | Validate Lua syntax in files |
| Mercury Not Found | Ensure `src.luau` declares `Mercury` globally |

## File Structure
```
📁 Magic
└──📁 Scripts
   └──📁 Development
      └──📁 DeadRailsHub
         ├──🔧 src.luau    (Core Library)
         ├──⚙️ config.luau (Configuration)
         └──🚀 obj.luau    (Main Loader)
```
```

**Critical Checks:**
1. Verify Mercury is declared **globally** in `src.luau`:
   ```lua
   -- src.luau (correct)
   Mercury = {} -- Global declaration
   ```

2. Ensure all files have valid Lua syntax:
   ```bash
   # Test locally first
   lua src.luau
   lua config.luau
   ```
