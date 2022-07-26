local client = game.Players.LocalPlayer

if getgenv().access_key == loadstring(game:HttpGet("https://raw.githubusercontent.com/muzscripter/projects/main/muz.wtf/access_key", true))() then
    print("Key is succesful")
else
    game.Players.LocalPlayer:Kick("Wrong key join the discord server | https://discord.gg/fKuzp8YDmT")
end



local blacklisted_users = {
    ['kaos7789'] = true, 
}

if blacklisted_users[game.Players.LocalPlayer.Name] then 
    game.Players.LocalPlayer:Kick("Blacklisted from using our scripts")
end

repeat wait() until game:IsLoaded()

local supported_games = {
    [3226555017] = {
        ["Name"] = "SCP: Site Roleplay",
        ["Function"] = function()
            local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
            print(GameName .. " Script Loaded")
        end
    },
    [3226555017] = {
        ["Name"] = "Project Slayers",
        ["Function"] = function()
            local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
            print(GameName .. " Script Loaded")
        end
    },
    [5780309044] = {
        ["Name"] = "Stand Awakening",
        ["Function"] = function()
            local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
            print(GameName .. " Script Loaded")
        end
    },
    [5780309044] = {
        ["Name"] = "A Universal Time",
        ["Function"] = function()
            local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
            print(GameName .. " Script Loaded")
        end
    },
    [5780309044] = {
        ["Name"] = "A Sakura Stand",
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
