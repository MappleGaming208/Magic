--DLibrary By MappleGaming208--
--[[
List of Variables
1 DLibrary = Library
2 Tab = Tab1
3 Section1 = Section
4 page = page1
]]--

_G.Settings = {
	UI = {
		Key = Enum.KeyCode.RightControl,
	}
}

local DLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/MappleGaming208/Magic/main/Scripts/Development/DiscordUiSource.txt"))()

--tab1--

local main = DLibrary:create({
	Name = "RoyalUI"
})

local Tab1 = main:createtab({
	Name = "Scripts"
})

local Section1 = Tab1:createsection({
    Name = "Universal"
})

local Page1 = Section1:createpage()

a = Page1:Label({
	Title = "RoyalUI",
})

Page1:Button({
	Title = "KeyboardMobile(ctrl to toggle ui)",
	Mode = "Defualt",
	AutoSize = false,
	callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
        wait()
        wait()
        wait()
        game:GetService("StarterGui"):SetCore("SendNotification", { 
            Title = "Notification!";
            Text = "Code Executed!";
            Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
        Duration = 16;

	end,
  -- Theme Mode {"Defualt","Delete","Delete Fill"}
})

Page1:Button({
	Title = "MobileFly",
	Mode = "Defualt",
	AutoSize = false,
	callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MappleGaming208/Discord-Library/main/mfly.lua"))()
        wait()
        wait()
        wait()
        game:GetService("StarterGui"):SetCore("SendNotification", { 
            Title = "Notification!";
            Text = "Code Executed!";
            Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
        Duration = 16;

	end,
  -- Theme Mode {"Defualt","Delete","Delete Fill"}
})

Page1:Button({
	Title = "Speed Gui",
	Mode = "Defualt",
	AutoSize = false,
	callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MappleGaming208/Discord-Library/main/speedgui.lua"))()
        wait()
        wait()
        wait()
        game:GetService("StarterGui"):SetCore("SendNotification", { 
            Title = "Notification!";
            Text = "Code Executed!";
            Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
        Duration = 16;

	end,
  -- Theme Mode {"Defualt","Delete","Delete Fill"}
})

Page1:Button({
	Title = "GhostHub",
	Mode = "Defualt",
	AutoSize = false,
	callback = function()
        loadstring(game:HttpGet("https://ghost-storage.7m.pl/scripts/ghosthublauncher.lua"))()
        wait()
        wait()
        wait()
        game:GetService("StarterGui"):SetCore("SendNotification", { 
            Title = "Notification!";
            Text = "Code Executed!";
            Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
        Duration = 16;

	end,
  -- Theme Mode {"Defualt","Delete","Delete Fill"}
})

Page1:Button({
	Title = "SerenadeHub",
	Mode = "Defualt",
	AutoSize = false,
	callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/4xdhondiscord/SerenadeHub/main/Serenade", true))()
        wait()
        wait()
        wait()
        game:GetService("StarterGui"):SetCore("SendNotification", { 
            Title = "Notification!";
            Text = "Code Executed!";
            Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
        Duration = 16;

	end,
  -- Theme Mode {"Defualt","Delete","Delete Fill"}
})

Page1:Button({
	Title = "EzLauncher",
	Mode = "Defualt",
	AutoSize = false,
	callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/debug42O/Ez-Industries-Launcher-Data/master/Launcher.lua'),true))()
        wait()
        wait()
        wait()
        game:GetService("StarterGui"):SetCore("SendNotification", { 
            Title = "Notification!";
            Text = "Code Executed!";
            Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
        Duration = 16;

	end,
  -- Theme Mode {"Defualt","Delete","Delete Fill"}
})

Page1:Button({
	Title = "UnFairHub",
	Mode = "Defualt",
	AutoSize = false,
	callback = function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/rbIxscriptsnet/unfair/main/rblxhub.lua'),true))()
        wait()
        wait()
        wait()
        game:GetService("StarterGui"):SetCore("SendNotification", { 
            Title = "Notification!";
            Text = "Code Executed!";
            Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
        Duration = 16;

	end,
  -- Theme Mode {"Defualt","Delete","Delete Fill"}
})

Page1:Button({
	Title = "UnKnownHubX",
	Mode = "Defualt",
	AutoSize = false,
	callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Unknownproooolucky/Unknown-Hub-X-Universal-Games/main/Games/Zombie-Attack'))()
        wait()
        wait()
        wait()
        game:GetService("StarterGui"):SetCore("SendNotification", { 
            Title = "Notification!";
            Text = "Code Executed!";
            Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
        Duration = 16;

	end,
  -- Theme Mode {"Defualt","Delete","Delete Fill"}
})

Page1:Button({
	Title = "ZombieAttackByTeamPoison",
	Mode = "Defualt",
	AutoSize = false,
	callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/MappleGaming208/Discord-Library/main/ZombieAttackTEAMP.lua'))()
        wait()
        wait()
        wait()
        game:GetService("StarterGui"):SetCore("SendNotification", { 
            Title = "Notification!";
            Text = "Code Executed!";
            Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
        Duration = 16;

	end,
  -- Theme Mode {"Defualt","Delete","Delete Fill"}
})

Page1:Button({
	Title = "F3XBtools",
	Mode = "Defualt",
	AutoSize = false,
	callback = function()
        loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()
        wait()
        wait()
        wait()
        game:GetService("StarterGui"):SetCore("SendNotification", { 
            Title = "Notification!";
            Text = "Code Executed!";
            Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
        Duration = 16;

	end,
  -- Theme Mode {"Defualt","Delete","Delete Fill"}
})

Page1:Button({
	Title = "Infinite Yeild",
	Mode = "Defualt",
	AutoSize = false,
	callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
        wait()
        wait()
        wait()
        game:GetService("StarterGui"):SetCore("SendNotification", { 
            Title = "Notification!";
            Text = "Code Executed!";
            Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
        Duration = 16;

	end,
  -- Theme Mode {"Defualt","Delete","Delete Fill"}
})

Page1:Button({
	Title = "Universal Executer GUI",
	Mode = "Defualt",
	AutoSize = false,
	callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/MappleGaming208/Discord-Library/main/universalexecutergui.lua'))()
        wait()
        wait()
        wait()
        game:GetService("StarterGui"):SetCore("SendNotification", { 
            Title = "Notification!";
            Text = "Code Executed!";
            Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
        Duration = 16;

	end,
  -- Theme Mode {"Defualt","Delete","Delete Fill"}
})

Page1:Button({
	Title = "Universal UI",
	Mode = "Defualt",
	AutoSize = false,
	callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MappleGaming208/Discord-Library/main/UniversalUI.lua"))()
        wait()
        wait()
        wait()
        game:GetService("StarterGui"):SetCore("SendNotification", { 
            Title = "Notification!";
            Text = "Code Executed!";
            Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
        Duration = 16;

	end,
  -- Theme Mode {"Defualt","Delete","Delete Fill"}
})


Page1:Modal({
	Title = "Fully Made By @MappleGaming208"
})

--tab2--


local Tab2 = main:createtab({
	Name = "Credits"
})

local Section2 = Tab2:createsection({
    Name = "Main"
})

local Page2 = Section2:createpage()

a = Page2:Label({
	Title = "RoyalUI Credits",
})
Page2:Modal({
	Title = "Fully Made By @MappleGaming208 , You can check me out at yt @mapplegaming208!. Thanks For Using My GUI!"
})
