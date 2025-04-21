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

local Window = ui:CreateWindow({
    Name = 'Visual Command UI Library', -- // The name of the created window.
    IntroText = 'Visual Command UI Library', -- // The text that will show in the intro / loading screen.
    IntroIcon = 'rbxassetid://10618644218', -- // The AssetId of the icon that will show in the intro / loading screen.
    IntroBlur = true, -- // If there should be a blur during the intro.
    IntroBlurIntensity = 15, -- // The intensity of the blur.
    Theme = ui.Themes.dark, -- // The theme the library should use (see more in Themes.md).
    Position = 'bottom', -- // The position the Window can be in (Top, TopLeft, TopRight, Bottom, BottomLeft, BottomRight).
    Draggable = true, -- // If the window is draggable (Only only X-axis).
    Prefix = ';' -- // The prefix that will be used before typing a command (will make the UI popup as well).
})
