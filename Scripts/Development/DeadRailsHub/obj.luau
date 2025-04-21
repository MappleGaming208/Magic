local urls = {
    repo = "https://raw.githubusercontent.com/MappleGaming208/Magic/main/Scripts/Development/DeadRailsHub/",
    source = "src",
    config = "config",
}

local MainLink = urls.repo .. urls.source .. ".luau?raw=true"
local SuccessfullyLoadedLibrary, LoadLibrary = pcall(game.HttpGet, game, MainLink, true)

if SuccessfullyLoadedLibrary then
    local GUI = loadstring(LoadLibrary)()
else
    warn("Error fetching v1:", LoadLibrary)
end

local config = urls.repo .. urls.config .. ".luau?raw=true"
local LoadedConfig, LoadConfig = pcall(game.HttpGet, game, config, true)

if LoadedConfig then
    loadstring(LoadConfig)()
else
    warn("Error fetching v2:", LoadConfig)
end
