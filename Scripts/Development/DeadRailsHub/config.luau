return function(Library)
    local TweenService = game:GetService("TweenService")
    local Flags = Library.Flags

    -- Noclip System
    local noclipEnabled = false
    local noclipConnection

    local function setNoclip(state)
        noclipEnabled = state
        
        if state then
            noclipConnection = game:GetService("RunService").Stepped:Connect(function()
                if noclipEnabled and game.Players.LocalPlayer.Character then
                    for _, part in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                        if part:IsA("BasePart") then
                            part.CanCollide = false
                        end
                    end
                else
                    noclipConnection:Disconnect()
                end
            end)
        else
            if noclipConnection then
                noclipConnection:Disconnect()
            end
            
            if game.Players.LocalPlayer.Character then
                for _, part in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = true
                    end
                end
            end
        end
    end

    -- GUI Implementation
    local Window = Library:Window({
        Text = "Baseplate"
    })

    -- Universal Tab
    local UniversalTab = Window:Tab({
        Text = "Universal"
    })

    local AimbotSection = UniversalTab:Section({
        Text = "Aimbot"
    })

    local FOVSection = UniversalTab:Section({
        Text = "FOV"
    })

    local MiscSection = UniversalTab:Section({
        Text = "Misc",
        Side = "Right"
    })

    -- Universal Tab Elements
    AimbotSection:Toggle({
        Text = "Enabled",
        Flag = "AimbotEnabled"
    })

    AimbotSection:Toggle({
        Text = "Wall Check",
        Flag = "WallCheck"
    })

    AimbotSection:Toggle({
        Text = "Smooth Aimbot",
        Flag = "SmoothAimbot"
    })

    FOVSection:Toggle({
        Text = "Enabled",
        Flag = "FOVEnabled"
    })

    FOVSection:Toggle({
        Text = "Filled FOV",
        Flag = "FilledFOV"
    })

    FOVSection:Toggle({
        Text = "FOV Transparency",
        Tooltip = "Changes your FOV transparency.",
        Flag = "FOVTransparency"
    })

    FOVSection:Button({
        Text = "Reset FOV",
        Tooltip = "This resets your aimbot FOV.",
        Callback = function()
            Library:Notify("FOV Reset!")
        end
    })

    MiscSection:Toggle({
        Text = "Infinite Ammo",
        Flag = "InfiniteAmmo"
    })

    MiscSection:Toggle({
        Text = "No Spread",
        Flag = "NoSpread"
    })

    MiscSection:Toggle({
        Text = "No Bullet Drop",
        Default = true,
        Flag = "NoBulletDrop"
    })

    MiscSection:Toggle({
        Text = "Full Auto",
        Flag = "FullAuto"
    })

    local NoRecoilToggle = MiscSection:Toggle({
        Text = "No Recoil",
        Flag = "NoRecoil"
    })

    local StatusLabel = MiscSection:Label({
        Text = "Status: Ready",
        Color = Color3.fromRGB(217, 97, 99),
        Tooltip = "System Status"
    })

    local TargetDropdown = AimbotSection:Dropdown({
        Text = "Target Bone",
        List = {"Head","Torso","Random"},
        Flag = "TargetBone",
        Callback = function(v)
            Library:Notify("Target set to: "..v)
        end
    })

    AimbotSection:RadioButton({
        Text = "Aimbot Mode",
        Options = {"Legit","Blatant"},
        Flag = "AimbotMode",
        Callback = function(v)
            Library:Notify("Mode set to: "..v)
        end
    })

    AimbotSection:Toggle({
        Text = "Silent Aimbot",
        Flag = "SilentAimbot"
    })

    AimbotSection:Input({
        Placeholder = "Webhook URL",
        Flag = "WebhookURL"
    })

    AimbotSection:Keybind({
        Default = Enum.KeyCode.E,
        Text = "Aimbot Key",
        Flag = "AimbotKeybind",
        Callback = function()
            Library:Notify("Aimbot Key Pressed!")
        end
    })

    AimbotSection:Slider({
        Text = "Smoothness",
        Default = 5,
        Minimum = 0,
        Maximum = 50,
        Flag = "AimbotSmoothness",
        Callback = function(v)
            Library:Notify("Smoothness: "..v)
        end
    })

    -- Main Tab
    local MainTab = Window:Tab({
        Text = "Main"
    })

    local PlayerSection = MainTab:Section({
        Text = "Player"
    })

    local ChamsSection = MainTab:Section({
        Text = "Chams"
    })

    -- Player Section Elements
    local noclipToggle = PlayerSection:Toggle({
        Text = "Noclip",
        Flag = "NoclipToggle",
        Callback = setNoclip
    })

    PlayerSection:Keybind({
        Text = "Noclip Key",
        Default = Enum.KeyCode.N,
        Flag = "NoclipKeybind",
        Callback = function()
            noclipEnabled = not noclipEnabled
            setNoclip(noclipEnabled)
            noclipToggle:Set(noclipEnabled)
            Library:Notify("Noclip "..(noclipEnabled and "Enabled" or "Disabled"))
        end
    })

    -- Chams Section Elements
    ChamsSection:Toggle({
        Text = "Enabled",
        Flag = "ChamsEnabled"
    })

    ChamsSection:Toggle({
        Text = "Color",
        Flag = "ChamsColor"
    })

    ChamsSection:Toggle({
        Text = "Filled",
        Flag = "ChamsFilled"
    })

    ChamsSection:Toggle({
        Text = "Team Check",
        Flag = "ChamsTeamCheck"
    })

    -- Teleports Tab
    local TeleportsTab = Window:Tab({
        Text = "Teleports"
    })

    local BuildingsSection = TeleportsTab:Section({
        Text = "Buildings"
    })

    local ObjectsSection = TeleportsTab:Section({
        Text = "Objects"
    })

    local ConfigSection = TeleportsTab:Section({
        Text = "Configuration"
    })

    local ThemeSection = TeleportsTab:Section({
        Text = "Appearance",
        Side = "Right"
    })

    -- Buildings Section
    BuildingsSection:Button({
        Text = "Teleport to Base",
        Callback = function()
            Library:Notify("Teleporting to base...")
            -- Add teleport logic here
        end
    })

    BuildingsSection:Button({
        Text = "Teleport to Armory",
        Callback = function()
            Library:Notify("Teleporting to armory...")
            -- Add teleport logic here
        end
    })

    BuildingsSection:Dropdown({
        Text = "Select Building",
        List = {"HQ", "Warehouse", "Factory"},
        Flag = "BuildingSelection",
        Callback = function(v)
            Library:Notify("Selected: "..v)
        end
    })

    -- Objects Section
    ObjectsSection:Button({
        Text = "Teleport to Vehicle",
        Callback = function()
            Library:Notify("Teleporting to vehicle...")
            -- Add teleport logic here
        end
    })

    ObjectsSection:Button({
        Text = "Teleport to Supply Crate",
        Callback = function()
            Library:Notify("Teleporting to supply crate...")
            -- Add teleport logic here
        end
    })

    ObjectsSection:Button({
        Text = "Teleport to Train",
        Callback = function()
            local teleportSound = Instance.new("Sound")
            teleportSound.SoundId = "rbxassetid://6439289406"
            teleportSound.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
            teleportSound.Volume = 1
            teleportSound:Play()

            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            
            if character:FindFirstChild("HumanoidRootPart") then
                local target = workspace:FindFirstChild("Train")
                if target and target:FindFirstChild("TrainControls") then
                    local seat = target.TrainControls:FindFirstChild("ConductorSeat")
                    if seat and seat:FindFirstChild("Part") then
                        local tween = TweenService:Create(
                            character.HumanoidRootPart,
                            TweenInfo.new(1, Enum.EasingStyle.Linear),
                            {CFrame = seat.Part.CFrame}
                        )
                        tween:Play()
                        teleportSound.Ended:Connect(function()
                            teleportSound:Destroy()
                        end)
                        Library:Notify("Teleported to train!")
                    else
                        Library:Notify("Train seat not found!", 3)
                    end
                else
                    Library:Notify("Train not found!", 3)
                end
            end
        end
    })

    ObjectsSection:Dropdown({
        Text = "Select Object",
        List = {"Medkit", "Ammo Box", "Weapon"},
        Flag = "ObjectSelection",
        Callback = function(v)
            Library:Notify("Selected: "..v)
        end
    })

    -- Configuration Section
    ConfigSection:Button({
        Text = "Save Config",
        Tooltip = "Save current settings",
        Callback = function()
            Library:Notify("Config Saved!")
        end
    })

    ConfigSection:Button({
        Text = "Load Config",
        Tooltip = "Load previous settings",
        Callback = function()
            Library:Notify("Config Loaded!")
        end
    })

    ConfigSection:Toggle({
        Text = "Auto Save",
        Default = true,
        Flag = "AutoSave"
    })

    -- Theme Section
    ThemeSection:Dropdown({
        Text = "UI Theme",
        List = {"Default", "Dark", "Light"},
        Flag = "UITheme",
        Callback = function(v)
            Library:SetTheme(v)
        end
    })

    ThemeSection:ColorPicker({
        Text = "Accent Color",
        Default = Color3.new(1, 1, 1),
        Flag = "AccentColor",
        Callback = function(v)
            Library:SetAccent(v)
        end
    })

    -- Initialization
    UniversalTab:Select()

    -- Post-Initialization Updates
    task.spawn(function()
        task.wait(5)
        StatusLabel:Set({
            Text = "Status: Operational",
            Color = Color3.fromRGB(99, 217, 107)
        })
        NoRecoilToggle:Set(true)
    end)

        -- Character Cleanup
    game.Players.LocalPlayer.CharacterAdded:Connect(function()
        if noclipEnabled then
            setNoclip(false)
            noclipToggle:Set(false)
        end
    end)
end

