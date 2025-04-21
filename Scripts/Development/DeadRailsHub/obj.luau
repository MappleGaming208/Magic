-- Loader Script (obj.luau)
local function LoadScript(url, scriptName)
    local success, content = pcall(game.HttpGetAsync, game, url)
    
    if not success then
        warn("❌ HTTP Error loading "..scriptName..":", content)
        return false
    end
    
    local success, err = pcall(loadstring(content))
    if not success then
        warn("❌ Execution Error in "..scriptName..":", err)
        return false
    end
    
    print("✅ Successfully loaded "..scriptName)
    return true
end

-- Configure URLs (FIXED: removed /refs/heads from URLs)
local URLs = {
    Src = "https://raw.githubusercontent.com/MappleGaming208/Magic/main/Scripts/Development/DeadRailsHub/src.luau",
    Config = "https://raw.githubusercontent.com/MappleGaming208/Magic/main/Scripts/Development/DeadRailsHub/config.luau",
    Main = "https://raw.githubusercontent.com/MappleGaming208/Magic/main/Scripts/Development/DeadRailsHub/obj.luau"
}

-- Load Order: 1. Source, 2. Config, 3. Main
if LoadScript(URLs.Src, "Source") then
    if LoadScript(URLs.Config, "Config") then
        if not LoadScript(URLs.Main, "Main") then
            warn("⚠️ Application failed to start!")
        end
    else
        warn("⚠️ Config failed - cannot start application!")
    end
else
    warn("⚠️ Critical failure - couldn't load source code!")
end
