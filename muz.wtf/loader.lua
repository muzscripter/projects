local supported_games = {
    [11468159863] = "https://scripts.luawl.com/11631/projectslayersv2.lua";
}

if supported_games[game.PlaceId] then
    pcall(function() return loadstring(game:HttpGet(supported_games[game.PlaceId]))() end);
    
    else
        game.Players.LocalPlayer:Kick("Game isn't supported")
end;
    
