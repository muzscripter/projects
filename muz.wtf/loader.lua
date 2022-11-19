for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
    v:Disable()
end

local supported_games = {
    [11468159863] = "https://scripts.luawl.com/11631/projectslayersv2.lua";
    [6152116144] = "https://scripts.luawl.com/13428/projectslayers_world1.lua";
    [11468075017] = "https://scripts.luawl.com/13455/hub_dungeon.lua";
}

if supported_games[game.PlaceId] then
   pcall(function() return loadstring(game:HttpGet(supported_games[game.PlaceId]))() end);
    else
   game.Players.LocalPlayer:Kick("Game isn't supported")
end;
    
