_G.wl_key="31b364e6939be96662e87594bc4b3401ea703a14"

local supported_games = {
    [3226555017] = "https://scripts.luawl.com/11629/scp:siteroleplay.lua",
    [9551640993] = "https://scripts.luawl.com/11709/miningsim.lua",
    [6152116144] = "https://scripts.luawl.com/11631/projectslayers.lua"
}

if supported_games[game.PlaceId] then
    pcall(function() return loadstring(game:HttpGet(supported_games[game.PlaceId]))() end)
end
