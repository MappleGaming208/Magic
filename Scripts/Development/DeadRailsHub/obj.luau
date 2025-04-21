--[[---tp to train
local TweenService = game:GetService("TweenService")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local targetCFrame = workspace.Train.TrainControls.ConductorSeat.Part.CFrame -- Replace with your object

local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear) -- duration
local tween = TweenService:Create(character.HumanoidRootPart, tweenInfo, {CFrame = targetCFrame})
tween:Play()
]]--
--[[---noclip
-- Noclip toggle variable
local noclipEnabled = false

-- Function to set noclip state
local function setNoclip(state)
    noclipEnabled = state
    if not state then
        -- Restore collisions when turning off noclip
        for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then
                v.CanCollide = true
            end
        end
    end
end

-- Noclip loop
game:GetService("RunService").Stepped:Connect(function()
    if noclipEnabled then
        for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") and v.CanCollide == true then
                v.CanCollide = false
            end
        end
    end
end)

-- Example: Toggle noclip with the 'N' key
game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed and input.KeyCode == Enum.KeyCode.N then
        setNoclip(not noclipEnabled)
        print("Noclip is now:", noclipEnabled)
    end
end)
]]--
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
