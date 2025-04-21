local urls = {
    repo = "https://raw.githubusercontent.com/MappleGaming208/Magic/main/Scripts/Development/DeadRailsHub/",
    file = "src",
}

local fullURL = urls.repo .. urls.file .. ".luau"
local success, result = pcall(game.HttpGet, game, fullURL, true)

if success then
    local ui = loadstring(result)()
else
    warn("Error fetching script:", result)
end

