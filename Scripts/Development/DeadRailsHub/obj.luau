local urls = {
    repo = "https://raw.githubusercontent.com/MappleGaming208/Magic/main/Scripts/Development/DeadRailsHub/",
    source = "src",
    config = "config",
}

local MainLink = urls.repo .. urls.source .. ".luau?raw=true"
local SuccessfullyLoadedLibrary, LoadLibrary = pcall(game.HttpGetAsync, MainLink)

if SuccessfullyLoadedLibrary then
    local success, Mercury = pcall(loadstring(LoadLibrary))  -- Proper error handling
    if success then
        print("Mercury loaded successfully!")
    else
        warn("Failed to execute Mercury:", Mercury)
    end
else
    warn("Error fetching Mercury:", LoadLibrary)
end

local configLink = urls.repo .. urls.config .. ".luau?raw=true"
local LoadedConfig, LoadConfig = pcall(game.HttpGetAsync, configLink)

if LoadedConfig then
    local success, err = pcall(loadstring(LoadConfig))  -- Added error wrapping
    if not success then
        warn("Failed to load config:", err)
    end
else
    warn("Error fetching config:", LoadConfig)
end
