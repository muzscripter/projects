repeat wait() until game:IsLoaded()


local blacklsited_users = {
    'kaos7789',
    'RealKaos_Alt'
}

local supported_games = {
    [3226555017] = {
        ["Name"] = "SCP: Site Roleplay",
        ["Function"] = function()
            local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
            print(GameName .. " Script Loaded")
        end
    }
}

if supported_games[game.PlaceId] then
    pcall(function() supported_games[game.PlaceId].Function() end)
    local d
    local f = pcall(function() d = game:HttpGet("https://raw.githubusercontent.com/muzscripter/projects/main/muz.wtf/scripts/"..game.PlaceId..".lua") end)
    if f == true then
        loadstring(d)()
    end
else
    game.Players.LocalPlayer:Kick("muz.wtf | game not supported" .. "https://discord.gg/fKuzp8YDmT")
end
