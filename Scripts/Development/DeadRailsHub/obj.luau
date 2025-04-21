local urls = {
    repo = "https://raw.githubusercontent.com/MappleGaming208/Magic/main/Scripts/Development/DeadRailsHub/",
    source = "src",
    config = "config",
}

local MainLink = urls.repo .. urls.source .. ".luau"
local SuccessfullyLoadedLibrary, LoadLibrary = pcall(game.HttpGet, game, MainLink, true)

if SuccessfullyLoadedLibrary then
    local GUI = loadstring(LoadLibrary)()
else
    warn("Error fetching:", LoadLibrary)
end

local config = urls.repo .. urls.config .. ".luau"
local LoadedConfig, LoadConfig = pcall(game.HttpGet, game, config, true)

if LoadedConfig then
    loadstring(LoadConfig)()
else
    warn("Error fetching:", LoadConfig)
end
