```lua
local urls = {
    repo = "https://raw.githubusercontent.com/MappleGaming208/Magic/main/Scripts/Development/DeadRailsHub/",
    load = "obj",
}

local LoadScript = urls.repo .. urls.load .. ".luau?raw=true"
local ScriptLoaded, LoadedScript = pcall(game:HttpGetAsync, LoadScript)

if ScriptLoaded then
    local GUI = loadstring(LoadedScript)()
else
    warn("Error fetching:", LoadedScript)
end

```
