local supported_games = {
    [3226555017] = "https://scripts.luawl.com/11629/scp:siteroleplay.lua",
    [9551640993] = "https://scripts.luawl.com/11709/miningsim.lua",
    [6152116144] = "https://scripts.luawl.com/11631/projectslayers.lua",
    [8884334497] = "https://scripts.luawl.com/11774/MiningClickerSimulator.lua"
}

if supported_games[game.PlaceId] then
    pcall(function() return loadstring(game:HttpGet(supported_games[game.PlaceId]))() end)
end
