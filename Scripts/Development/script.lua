-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local sections = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local TabButton1 = Instance.new("TextButton")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local UICorner_3 = Instance.new("UICorner")
local TabButton2 = Instance.new("TextButton")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local UICorner_4 = Instance.new("UICorner")
local TabButton3 = Instance.new("TextButton")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local UICorner_5 = Instance.new("UICorner")
local TabButton4 = Instance.new("TextButton")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local UICorner_6 = Instance.new("UICorner")
local TabButton5 = Instance.new("TextButton")
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
local UICorner_7 = Instance.new("UICorner")
local TabButton6 = Instance.new("TextButton")
local UIAspectRatioConstraint_8 = Instance.new("UIAspectRatioConstraint")
local UICorner_8 = Instance.new("UICorner")
local Tab1 = Instance.new("Frame")
local UICorner_9 = Instance.new("UICorner")
local UIAspectRatioConstraint_9 = Instance.new("UIAspectRatioConstraint")
local GhostHub = Instance.new("TextButton")
local UIAspectRatioConstraint_10 = Instance.new("UIAspectRatioConstraint")
local UICorner_10 = Instance.new("UICorner")
local Fly = Instance.new("TextButton")
local UIAspectRatioConstraint_11 = Instance.new("UIAspectRatioConstraint")
local UICorner_11 = Instance.new("UICorner")
local NoClip = Instance.new("TextButton")
local UIAspectRatioConstraint_12 = Instance.new("UIAspectRatioConstraint")
local UICorner_12 = Instance.new("UICorner")
local ZombieAttack = Instance.new("TextButton")
local UIAspectRatioConstraint_13 = Instance.new("UIAspectRatioConstraint")
local UICorner_13 = Instance.new("UICorner")
local InfYeild = Instance.new("TextButton")
local UIAspectRatioConstraint_14 = Instance.new("UIAspectRatioConstraint")
local UICorner_14 = Instance.new("UICorner")
local Credits = Instance.new("TextButton")
local UIAspectRatioConstraint_15 = Instance.new("UIAspectRatioConstraint")
local UICorner_15 = Instance.new("UICorner")
local CreditsFrame = Instance.new("Frame")
local UICorner_16 = Instance.new("UICorner")
local UIAspectRatioConstraint_16 = Instance.new("UIAspectRatioConstraint")
local Text = Instance.new("TextLabel")
local UIAspectRatioConstraint_17 = Instance.new("UIAspectRatioConstraint")
local toolbar = Instance.new("Frame")
local Name = Instance.new("TextLabel")
local UIAspectRatioConstraint_18 = Instance.new("UIAspectRatioConstraint")
local UICorner_17 = Instance.new("UICorner")
local UIAspectRatioConstraint_19 = Instance.new("UIAspectRatioConstraint")
local minimize = Instance.new("TextButton")
local UIAspectRatioConstraint_20 = Instance.new("UIAspectRatioConstraint")
local UICorner_18 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

main.Name = "main"
main.Parent = ScreenGui
main.AnchorPoint = Vector2.new(0.5, 0.5)
main.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
main.BorderColor3 = Color3.fromRGB(0, 0, 0)
main.BorderSizePixel = 0
main.Position = UDim2.new(0.49907881, 0, 0.5, 0)
main.Size = UDim2.new(0.554214239, 0, 0.771604955, 0)

UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = main

UIAspectRatioConstraint.Parent = main
UIAspectRatioConstraint.AspectRatio = 1.010

sections.Name = "sections"
sections.Parent = main
sections.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
sections.BorderColor3 = Color3.fromRGB(0, 0, 0)
sections.BorderSizePixel = 0
sections.Position = UDim2.new(0, 0, 0.0279999692, 0)
sections.Size = UDim2.new(0.263366312, 0, 0.972000003, 0)

UICorner_2.CornerRadius = UDim.new(0, 10)
UICorner_2.Parent = sections

UIAspectRatioConstraint_2.Parent = sections
UIAspectRatioConstraint_2.AspectRatio = 0.274

TabButton1.Name = "TabButton1"
TabButton1.Parent = sections
TabButton1.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TabButton1.BorderColor3 = Color3.fromRGB(0, 0, 0)
TabButton1.BorderSizePixel = 0
TabButton1.Position = UDim2.new(0.195488751, 0, 0.104938269, 0)
TabButton1.Size = UDim2.new(0.601503849, 0, 0.0823045298, 0)
TabButton1.Font = Enum.Font.SourceSansBold
TabButton1.Text = "Tab1"
TabButton1.TextColor3 = Color3.fromRGB(255, 255, 255)
TabButton1.TextScaled = true
TabButton1.TextSize = 14.000
TabButton1.TextWrapped = true

UIAspectRatioConstraint_3.Parent = TabButton1
UIAspectRatioConstraint_3.AspectRatio = 2.000

UICorner_3.Parent = TabButton1

TabButton2.Name = "TabButton2"
TabButton2.Parent = sections
TabButton2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TabButton2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TabButton2.BorderSizePixel = 0
TabButton2.Position = UDim2.new(0.195488751, 0, 0.220164612, 0)
TabButton2.Size = UDim2.new(0.601503849, 0, 0.0823045298, 0)
TabButton2.Font = Enum.Font.SourceSansBold
TabButton2.Text = "Tab2"
TabButton2.TextColor3 = Color3.fromRGB(255, 255, 255)
TabButton2.TextScaled = true
TabButton2.TextSize = 14.000
TabButton2.TextWrapped = true

UIAspectRatioConstraint_4.Parent = TabButton2
UIAspectRatioConstraint_4.AspectRatio = 2.000

UICorner_4.Parent = TabButton2

TabButton3.Name = "TabButton3"
TabButton3.Parent = sections
TabButton3.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TabButton3.BorderColor3 = Color3.fromRGB(0, 0, 0)
TabButton3.BorderSizePixel = 0
TabButton3.Position = UDim2.new(0.195488751, 0, 0.335390955, 0)
TabButton3.Size = UDim2.new(0.601503849, 0, 0.0823045298, 0)
TabButton3.Font = Enum.Font.SourceSansBold
TabButton3.Text = "Tab3"
TabButton3.TextColor3 = Color3.fromRGB(255, 255, 255)
TabButton3.TextScaled = true
TabButton3.TextSize = 14.000
TabButton3.TextWrapped = true

UIAspectRatioConstraint_5.Parent = TabButton3
UIAspectRatioConstraint_5.AspectRatio = 2.000

UICorner_5.Parent = TabButton3

TabButton4.Name = "TabButton4"
TabButton4.Parent = sections
TabButton4.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TabButton4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TabButton4.BorderSizePixel = 0
TabButton4.Position = UDim2.new(0.195488751, 0, 0.458847731, 0)
TabButton4.Size = UDim2.new(0.601503849, 0, 0.0823045298, 0)
TabButton4.Font = Enum.Font.SourceSansBold
TabButton4.Text = "Tab4"
TabButton4.TextColor3 = Color3.fromRGB(255, 255, 255)
TabButton4.TextScaled = true
TabButton4.TextSize = 14.000
TabButton4.TextWrapped = true

UIAspectRatioConstraint_6.Parent = TabButton4
UIAspectRatioConstraint_6.AspectRatio = 2.000

UICorner_6.Parent = TabButton4

TabButton5.Name = "TabButton5"
TabButton5.Parent = sections
TabButton5.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TabButton5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TabButton5.BorderSizePixel = 0
TabButton5.Position = UDim2.new(0.195488706, 0, 0.585005403, 0)
TabButton5.Size = UDim2.new(0.601503849, 0, 0.0823045298, 0)
TabButton5.Font = Enum.Font.SourceSansBold
TabButton5.Text = "Tab5"
TabButton5.TextColor3 = Color3.fromRGB(255, 255, 255)
TabButton5.TextScaled = true
TabButton5.TextSize = 14.000
TabButton5.TextWrapped = true

UIAspectRatioConstraint_7.Parent = TabButton5
UIAspectRatioConstraint_7.AspectRatio = 2.000

UICorner_7.Parent = TabButton5

TabButton6.Name = "TabButton6"
TabButton6.Parent = sections
TabButton6.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TabButton6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TabButton6.BorderSizePixel = 0
TabButton6.Position = UDim2.new(0.195488706, 0, 0.716015279, 0)
TabButton6.Size = UDim2.new(0.601503849, 0, 0.0823045298, 0)
TabButton6.Font = Enum.Font.SourceSansBold
TabButton6.Text = "Tab6"
TabButton6.TextColor3 = Color3.fromRGB(255, 255, 255)
TabButton6.TextScaled = true
TabButton6.TextSize = 14.000
TabButton6.TextWrapped = true

UIAspectRatioConstraint_8.Parent = TabButton6
UIAspectRatioConstraint_8.AspectRatio = 2.000

UICorner_8.Parent = TabButton6

Tab1.Name = "Tab1"
Tab1.Parent = sections
Tab1.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Tab1.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tab1.BorderSizePixel = 0
Tab1.Position = UDim2.new(0.998142004, 0, 0.0512164533, 0)
Tab1.Size = UDim2.new(2.79167843, 0, 0.947503209, 0)
Tab1.Visible = false

UICorner_9.CornerRadius = UDim.new(0, 10)
UICorner_9.Parent = Tab1

UIAspectRatioConstraint_9.Parent = Tab1
UIAspectRatioConstraint_9.AspectRatio = 0.806

GhostHub.Name = "GhostHub"
GhostHub.Parent = Tab1
GhostHub.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
GhostHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
GhostHub.BorderSizePixel = 0
GhostHub.Position = UDim2.new(0.0502793305, 0, 0.0270270277, 0)
GhostHub.Size = UDim2.new(0.223463684, 0, 0.180180177, 0)
GhostHub.Font = Enum.Font.SourceSansBold
GhostHub.Text = "GhostHub"
GhostHub.TextColor3 = Color3.fromRGB(255, 255, 255)
GhostHub.TextScaled = true
GhostHub.TextSize = 14.000
GhostHub.TextWrapped = true

UIAspectRatioConstraint_10.Parent = GhostHub

UICorner_10.Parent = GhostHub
GhostHub.MouseButton1Down:connect(function()
loadstring(game:HttpGet('https://ghost-storage.7m.pl/scripts/ghosthublauncher.lua'))()
    end)

Fly.Name = "Fly"
Fly.Parent = Tab1
Fly.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Fly.BorderColor3 = Color3.fromRGB(0, 0, 0)
Fly.BorderSizePixel = 0
Fly.Position = UDim2.new(0.388268143, 0, 0.0270270277, 0)
Fly.Size = UDim2.new(0.223463684, 0, 0.180180177, 0)
Fly.Font = Enum.Font.SourceSansBold
Fly.Text = "Fly"
Fly.TextColor3 = Color3.fromRGB(255, 255, 255)
Fly.TextScaled = true
Fly.TextSize = 14.000
Fly.TextWrapped = true

UIAspectRatioConstraint_11.Parent = Fly

UICorner_11.Parent = Fly
Fly.MouseButton1Down:connect(function()
--ARCEUS X FLY V2 SCRIPT
loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
    end)

NoClip.Name = "NoClip"
NoClip.Parent = Tab1
NoClip.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
NoClip.BorderColor3 = Color3.fromRGB(0, 0, 0)
NoClip.BorderSizePixel = 0
NoClip.Position = UDim2.new(0.701117337, 0, 0.0270270277, 0)
NoClip.Size = UDim2.new(0.223463684, 0, 0.180180177, 0)
NoClip.Font = Enum.Font.SourceSansBold
NoClip.Text = "NoClip"
NoClip.TextColor3 = Color3.fromRGB(255, 255, 255)
NoClip.TextScaled = true
NoClip.TextSize = 14.000
NoClip.TextWrapped = true

UIAspectRatioConstraint_12.Parent = NoClip

UICorner_12.Parent = NoClip
NoClip.MouseButton1Down:connect(function()
    local Noclip = nil
    local Clip = nil
    
    function noclip()
        Clip = false
        local function Nocl()
            if Clip == false and game.Players.LocalPlayer.Character ~= nil then
                for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                    if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
                        v.CanCollide = false
                    end
                end
            end
            wait(0.21) -- basic optimization
        end
        Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
    end
    
    function clip()
        if Noclip then Noclip:Disconnect() end
        Clip = true
    end
    
    noclip() -- to toggle noclip() and clip()
end)

ZombieAttack.Name = "ZombieAttack"
ZombieAttack.Parent = Tab1
ZombieAttack.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ZombieAttack.BorderColor3 = Color3.fromRGB(0, 0, 0)
ZombieAttack.BorderSizePixel = 0
ZombieAttack.Position = UDim2.new(0.0502793305, 0, 0.25, 0)
ZombieAttack.Size = UDim2.new(0.223463684, 0, 0.180180177, 0)
ZombieAttack.Font = Enum.Font.SourceSansBold
ZombieAttack.Text = "ZombieAttack"
ZombieAttack.TextColor3 = Color3.fromRGB(255, 255, 255)
ZombieAttack.TextScaled = true
ZombieAttack.TextSize = 14.000
ZombieAttack.TextWrapped = true

UIAspectRatioConstraint_13.Parent = ZombieAttack

UICorner_13.Parent = ZombieAttack
ZombieAttack.MouseButton1Down:connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/MappleGaming208/kwdf/src/zombieattack.lua'))()
    end)

InfYeild.Name = "InfYeild"
InfYeild.Parent = Tab1
InfYeild.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
InfYeild.BorderColor3 = Color3.fromRGB(0, 0, 0)
InfYeild.BorderSizePixel = 0
InfYeild.Position = UDim2.new(0.385709047, 0, 0.253229201, 0)
InfYeild.Size = UDim2.new(0.223463684, 0, 0.180180177, 0)
InfYeild.Font = Enum.Font.SourceSansBold
InfYeild.Text = "InfYeild"
InfYeild.TextColor3 = Color3.fromRGB(255, 255, 255)
InfYeild.TextScaled = true
InfYeild.TextSize = 14.000
InfYeild.TextWrapped = true

UIAspectRatioConstraint_14.Parent = InfYeild

UICorner_14.Parent = InfYeild
InfYeild.MouseButton1Down:connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

Credits.Name = "Credits"
Credits.Parent = sections
Credits.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Credits.BorderColor3 = Color3.fromRGB(0, 0, 0)
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(0.195488632, 0, 0.846190155, 0)
Credits.Size = UDim2.new(0.601503849, 0, 0.0823045298, 0)
Credits.Font = Enum.Font.SourceSansBold
Credits.Text = "Credits"
Credits.TextColor3 = Color3.fromRGB(255, 255, 255)
Credits.TextScaled = true
Credits.TextSize = 14.000
Credits.TextWrapped = true

UIAspectRatioConstraint_15.Parent = Credits
UIAspectRatioConstraint_15.AspectRatio = 2.000

UICorner_15.Parent = Credits

CreditsFrame.Name = "CreditsFrame"
CreditsFrame.Parent = sections
CreditsFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
CreditsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
CreditsFrame.BorderSizePixel = 0
CreditsFrame.Position = UDim2.new(0.998142004, 0, 0.0512164533, 0)
CreditsFrame.Size = UDim2.new(2.79167843, 0, 0.947503209, 0)
CreditsFrame.Visible = false

UICorner_16.CornerRadius = UDim.new(0, 10)
UICorner_16.Parent = CreditsFrame

UIAspectRatioConstraint_16.Parent = CreditsFrame
UIAspectRatioConstraint_16.AspectRatio = 0.806

Text.Name = "Text"
Text.Parent = CreditsFrame
Text.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Text.BorderColor3 = Color3.fromRGB(0, 0, 0)
Text.BorderSizePixel = 0
Text.Position = UDim2.new(0.0446927361, 0, 0.0292792786, 0)
Text.Size = UDim2.new(0.905027926, 0, 0.930180192, 0)
Text.Font = Enum.Font.SourceSansBold
Text.Text = "Fully Made BY @MappleGaming208"
Text.TextColor3 = Color3.fromRGB(255, 255, 255)
Text.TextScaled = true
Text.TextSize = 14.000
Text.TextWrapped = true

UIAspectRatioConstraint_17.Parent = Text
UIAspectRatioConstraint_17.AspectRatio = 0.785

toolbar.Name = "toolbar"
toolbar.Parent = main
toolbar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
toolbar.BorderColor3 = Color3.fromRGB(0, 0, 0)
toolbar.BorderSizePixel = 0
toolbar.Position = UDim2.new(0.000615306897, 0, 0.00239508064, 0)
toolbar.Size = UDim2.new(0.998019695, 0, 0.0759999976, 0)

Name.Name = "Name"
Name.Parent = toolbar
Name.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Name.BorderColor3 = Color3.fromRGB(0, 0, 0)
Name.BorderSizePixel = 0
Name.Position = UDim2.new(0.0198829286, 0, 0.0089344224, 0)
Name.Size = UDim2.new(0.896825373, 0, 1, 0)
Name.Font = Enum.Font.Cartoon
Name.Text = "  RoyalHub By MappleGaming208"
Name.TextColor3 = Color3.fromRGB(255, 255, 255)
Name.TextScaled = true
Name.TextSize = 14.000
Name.TextWrapped = true
Name.TextXAlignment = Enum.TextXAlignment.Left

UIAspectRatioConstraint_18.Parent = Name
UIAspectRatioConstraint_18.AspectRatio = 11.895

UICorner_17.CornerRadius = UDim.new(0, 10)
UICorner_17.Parent = toolbar

UIAspectRatioConstraint_19.Parent = toolbar
UIAspectRatioConstraint_19.AspectRatio = 13.263

minimize.Name = "minimize"
minimize.Parent = ScreenGui
minimize.BackgroundColor3 = Color3.fromRGB(49, 134, 139)
minimize.BorderColor3 = Color3.fromRGB(0, 0, 0)
minimize.BorderSizePixel = 0
minimize.Position = UDim2.new(0.960381448, 0, 0.111969925, 0)
minimize.Size = UDim2.new(0.037792895, 0, 0.0617283955, 0)
minimize.Font = Enum.Font.SourceSansBold
minimize.Text = "X"
minimize.TextColor3 = Color3.fromRGB(255, 255, 255)
minimize.TextScaled = true
minimize.TextSize = 14.000
minimize.TextWrapped = true

UIAspectRatioConstraint_20.Parent = minimize

UICorner_18.Parent = minimize

-- Scripts:

local function EBSLRKT_fake_script() -- sections.LocalScript 
	local script = Instance.new('LocalScript', sections)

	local SGui = script.Parent
	local Frame = SGui:WaitForChild("Tab1")
	local Button = SGui:WaitForChild("TabButton1")
	
	Button.MouseButton1Up:Connect(function()
		Frame.Visible = not Frame.Visible
	end)
	
end
coroutine.wrap(EBSLRKT_fake_script)()
local function ETOBOL_fake_script() -- sections.LocalScript 
	local script = Instance.new('LocalScript', sections)

	local SGui = script.Parent
	local Frame = SGui:WaitForChild("CreditsFrame")
	local Button = SGui:WaitForChild("Credits")
	
	Button.MouseButton1Up:Connect(function()
		Frame.Visible = not Frame.Visible
	end)
	
end
coroutine.wrap(ETOBOL_fake_script)()
local function QTOX_fake_script() -- ScreenGui.LocalScript 
	local script = Instance.new('LocalScript', ScreenGui)

	local SGui = script.Parent
	local Frame = SGui:WaitForChild("main")
	local Button = SGui:WaitForChild("minimize")
	
	Button.MouseButton1Up:Connect(function()
		Frame.Visible = not Frame.Visible
	end)
	
end
coroutine.wrap(QTOX_fake_script)()
