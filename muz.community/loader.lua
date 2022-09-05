local keys = {
    ["release"] = true
}

local game_https = {
    [6152116144] = "https://raw.githubusercontent.com/muzscripter/projects/main/muz.community/scripts/projectslayers.lua";
}

local CoreGui = game:GetService("StarterGui")

if keys[getgenv().comkey] then
    if game_https[game.PlaceId] then

        pcall(function() return loadstring(game:HttpGet(game_https[game.PlaceId]))() end);

        CoreGui:SetCore("SendNotification", {Title = "muz.community"; Text = "Join the discord server | https://discord.gg/QBdvJ5QymP"; Duration = 60; Button1 = "Ok"; })
    else
        game.Players.LocalPlayer:Kick("Wrong key or game isn't supported")
    end
end;
