local library = loadstring(game.HttpGet(game, "raw.githubusercontent.com/MappleGaming208/Magic/main/Scripts/Development/0x37.txt"))()

local Ainfo = library:Window("Info") -- Text
local BUniversal = library:Window("Universal")

BUniversal:Button(
    "Print Hi",
    function()
        print("Hi")
    end
) -- Text, Callback

BUniversal:Slider(
    "WalkSpeed",
    "WS",
    16,
    300,
    function(value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
    end
) -- Text, Flag, Minimum, Maximum, Callback, Default (Optional), Flag Location (Optional)

BUniversal:Slider(
    "JumpPower",
    "JP",
    50,
    300,
    function(value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
    end,
    100
) -- Text, Flag, Minimum, Maximum, Callback, Default (Optional), Flag Location (Optional)

BUniversal:Toggle(
    "Freeze",
    "frz",
    false,
    function(toggled)
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = toggled
    end
) -- Text, Flag, Enabled, Callback, Flag Location (Optional)

BUniversal:Button(
    "Destroy GUI",
    function()
        for i, v in pairs(game.CoreGui:GetChildren()) do
            if v:FindFirstChild("Top") then
                v:Destroy()
            end
        end
    end
) -- Text, Callback

BUniversal:Label("0 x 3 7") -- Text
Ainfo:Label("Made By MappleGaming208") -- Text
