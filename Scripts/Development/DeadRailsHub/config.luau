return function(Library)
    -- Initialize ALL tables at the start
    local Flags = Library.Flags or {}
    local Tables = {
        AimbotSettings = {},
        Teleports = {},
        Config = {}
    }

    local TweenService = game:GetService("TweenService")
    
    -- Noclip System (with table safeguards)
    local noclipEnabled = false
    local noclipConnection
    local CharacterParts = {} -- Table for tracking parts

    local function setNoclip(state)
        noclipEnabled = state
        
        if state then
            -- Initialize tracking table
            CharacterParts = {}
            
            local character = game.Players.LocalPlayer.Character
            if character then
                for _, part in pairs(character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        CharacterParts[part] = true -- Track parts in table
                        part.CanCollide = false
                    end
                end
            end

            noclipConnection = game:GetService("RunService").Stepped:Connect(function()
                if noclipEnabled and game.Players.LocalPlayer.Character then
                    for part in pairs(CharacterParts) do -- Safe iteration
                        part.CanCollide = false
                    end
                else
                    noclipConnection:Disconnect()
                end
            end)
        else
            if noclipConnection then
                noclipConnection:Disconnect()
            end
            
            for part in pairs(CharacterParts) do -- Safe iteration
                part.CanCollide = true
            end
        end
    end

    -- GUI Implementation
    local Window = Library:Window({
        Text = "Baseplate"
    })

    -- Universal Tab (with table validation)
    local UniversalTab = Window:Tab({
        Text = "Universal"
    })

    local AimbotSection = UniversalTab:Section({
        Text = "Aimbot"
    })

    -- Initialize settings table
    local AimbotSettings = {
        Enabled = false,
        TargetBone = "Head",
        FOV = 30
    }

    AimbotSection:Toggle({
        Text = "Enabled",
        Callback = function(state)
            AimbotSettings.Enabled = state -- Safe table access
        end
    })

    -- ... (rest of your Universal tab code) ...

    -- Teleports Tab (with nil checks)
    local TeleportsTab = Window:Tab({
        Text = "Teleports"
    })

    local ObjectsSection = TeleportsTab:Section({
        Text = "Objects"
    })

    ObjectsSection:Button({
        Text = "Teleport To Train",
        Callback = function()
            -- Validate target existence
            local target = workspace:FindFirstChild("Train")
            if not target then
                Library:Notify("Train not found!")
                return
            end

            -- Safe table access for parts
            local controls = target:FindFirstChild("TrainControls")
            local seat = controls and controls:FindFirstChild("ConductorSeat")
            local part = seat and seat:FindFirstChild("Part")
            
            if part then
                local character = game.Players.LocalPlayer.Character
                if character and character:FindFirstChild("HumanoidRootPart") then
                    local tween = TweenService:Create(
                        character.HumanoidRootPart,
                        TweenInfo.new(1, Enum.EasingStyle.Linear),
                        {CFrame = part.CFrame}
                    )
                    tween:Play()
                end
            end
        end
    })

    -- Character Cleanup (with nil checks)
    game.Players.LocalPlayer.CharacterAdded:Connect(function()
        if noclipEnabled then
            setNoclip(false)
            
            -- Validate UI element existence
            if noclipToggle and typeof(noclipToggle.Set) == "function" then
                noclipToggle:Set(false)
            end
        end
    end)
end
