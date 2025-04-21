-- obj.luau
local function LoadScript(url, scriptName)
    -- HTTP Fetch
    local success, content = pcall(game.HttpGetAsync, game, url)
    if not success then
        warn("❌ HTTP Error:", scriptName, content)
        return nil
    end
    
    -- Compile
    local func, err = loadstring(content)
    if not func then
        warn("❌ Compile Error:", scriptName, err)
        return nil
    end
    
    -- Execute
    local success, result = pcall(func)
    if not success then
        warn("❌ Runtime Error:", scriptName, result)
        return nil
    end
    
    print("✅ Loaded:", scriptName)
    return result
end

-- URLs (FIXED: Remove /refs/heads)
local URLs = {
    Src = "https://raw.githubusercontent.com/MappleGaming208/Magic/main/Scripts/Development/DeadRailsHub/src.luau",
    Config = "https://raw.githubusercontent.com/MappleGaming208/Magic/main/Scripts/Development/DeadRailsHub/config.luau"
}

-- Load Library
local Library = LoadScript(URLs.Src, "Source")
if not Library then
    error("Critical: Library failed to load!")
end

-- Debug Library
print("Library Type:", typeof(Library))
print("Themes Available:", next(Library.Themes) ~= nil)

-- Load Config
local Config = LoadScript(URLs.Config, "Config")
if Config then
    local GUI = Config(Library)
    if GUI then
        print("GUI Created Successfully!")
    else
        warn("⚠️ GUI Creation Failed!")
    end
else
    warn("⚠️ Config Failed!")
end
