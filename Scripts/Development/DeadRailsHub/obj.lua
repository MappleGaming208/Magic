--[[tp to train
local TweenService = game:GetService("TweenService")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local targetCFrame = workspace.Train.TrainControls.ConductorSeat.Part.CFrame -- Replace with your object

local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear) -- duration
local tween = TweenService:Create(character.HumanoidRootPart, tweenInfo, {CFrame = targetCFrame})
tween:Play()
]]--


