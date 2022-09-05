local _keys = {
    ["release"] = false,
    ["1iLliLLLi_10X@0+##)@"] = true
}

local game_https = {
    [6152116144] = "https://raw.githubusercontent.com/muzscripter/projects/main/muz.community/scripts/projectslayers.lua";
}

local function _checkKey()
    if _keys[comkey] then
        return true
    else
        return false
    end
end


function check_key()
    if _checkKey() == true then
        pcall(function() return loadstring(game:HttpGet(game_https[game.PlaceId]))() end);
    elseif _checkKey() == false then
        game.Players.LocalPlayer:Kick("Wrong key or game isn't supported join the discord ") 

        CoreGui:SetCore("SendNotification", {Title = "muz.community"; Text = "Join the discord server | https://discord.gg/QBdvJ5QymP"; Duration = 60; Button1 = "Ok"; })
    end
end

check_key()

