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
 repo = "https://raw.githubusercontent.com/MappleGaming208/Magic/Scripts/Development/DeadRailsHub/",
 file = "src",
}
local ui = loadstring(game:HttpGet(Params.repo .. Params.file .. ".luau", true)()
