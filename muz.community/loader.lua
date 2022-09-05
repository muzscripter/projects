local keys = {
    ["release"] = true
}

local game_https = {
    [6152116144] = "https://raw.githubusercontent.com/muzscripter/projects/main/muz.community/scripts/projectslayers.lua";
}

local CoreGui = game:GetService("StarterGui")

if keys[comkey] then
    if game_https[game.PlaceId] then
        pcall(function() return loadstring(game:HttpGet(game_https[game.PlaceId]))() end);
    end
end
