```lua
local urls = {
    repo = "https://raw.githubusercontent.com/MappleGaming208/Magic/main/Scripts/Development/DeadRailsHub/",
    load = "obj",
}

local LoadScript = urls.repo .. urls.load .. ".luau?raw=true"
local ScriptLoaded, LoadScript = pcall(game.HttpGet, game, MainLink, true)

if ScriptLoaded then
    local GUI = loadstring(LoadScript)()
else
    warn("Error fetching:", LoadScript)
end
```
