game.Players.LocalPlayer:Kick("You've been banned for being retarded LOL")

local gmt = getrawmetatable(game)

local oldindex = gmt.__index
local oldnamecall gmt.__namecall

local mod = require(game:GetService("ReplicatedStorage").Modules.Global["Random_Clan_Picker"])

gmt = hookmetamethod(game, "index", function(i, v)
if tostring(i) == "Spins" then

i.Value = 9e9

end

return oldindex(i, v)

end)
