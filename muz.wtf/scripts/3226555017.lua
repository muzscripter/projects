-- scp roleplay

repeat wait() until game:IsLoaded()

local bro;
bro = hookmetamethod(game, '__namecall', function(self, ...)
    local args = {...}
    local method = getnamecallmethod()

    if not checkcaller() and tostring(method) == 'FireServer' and self == 'ClientReplicate' then
        return
    end

    return bro(self, ...)
end)

local CoreGui = game:GetService("StarterGui")
CoreGui:SetCore("SendNotification", {Title = "muz.wtf"; Text = "Script Loaded"; Duration = 5; Button1 = "Ok"; })

local Framework = loadstring(game:HttpGet("https://pastebinp.com/raw/KP1dUHFg"))()
local Watermark = Framework:CreateWatermark("muz.wtf | {game} | {fps}")
local WriteLine  = Framework:CreateWindow("SCP: Site Roleplay", Vector2.new(600, 400), Enum.KeyCode.RightControl)
local General = WriteLine:CreateTab("Main Tab")
local server = WriteLine:CreateTab("Server")
local web = WriteLine:CreateTab("Webhooks")
local creds = WriteLine:CreateTab("Credits")
local Main = General:CreateSector("Main", "left")
local cred = creds:CreateSector("Credits", "left")
local serv = server:CreateSector("Server", "left")
local serv2 = server:CreateSector("Other", "left")
local web1 = web:CreateSector("Web Hooks", "left")

-- // Services
local Players = game:GetService("Players")

cred:AddLabel("Server | https://discord.gg/fKuzp8YDmT")

cred:AddLabel("Developers | ! muz, † lux")

local plr = General:CreateSector("Player", "right")
local misc = General:CreateSector("Misc", "left")
local tele = General:CreateSector("Teleports", "right")
local oth = General:CreateSector("Other", "right")

oth:AddToggle("Fly / Float", false, function(x)

    getgenv().flying_state = x 

    local CoreGui = game:GetService("StarterGui")

    CoreGui:SetCore("SendNotification", {Title = "muz.wtf | fly"; Text = "Space ; Ascend | C ; Descend"; Duration = 50; Button1 = "Okay";})

end)
    
local function keydown(key)
    return game:GetService("UserInputService"):IsKeyDown(key)
end

while getgenv().flying_state == true do
    local move = game.Players.LocalPlayer.Character.Humanoid.MoveDirection * 10 * 4
    if keydown(Enum.KeyCode.Space) then
        game.Players.LocalPlayer.Character.Humanoid.RootPart.Velocity = Vector3.new(0,55,0) + move
    elseif keydown(Enum.KeyCode.C) then
        game.Players.LocalPlayer.Character.Humanoid.RootPart.Velocity = Vector3.new(0,-55,0) + move
        else
            game.Players.LocalPlayer.Character.Humanoid.RootPart.Velocity = Vector3.new(0,2,0) + move
            end
            game:GetService("RunService").Heartbeat:wait()
end



local client = game:GetService("Players").LocalPlayer
local user = client.Name

local TweenService = game:GetService("TweenService")
local noclipE = true
local antifall = true

local function noclip()
    for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if v:IsA("BasePart") and v.CanCollide == true then
            v.CanCollide = false
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
        end
    end
end

local function moveto(obj, speed)
    local info = TweenInfo.new(
        ((client.Character.HumanoidRootPart.Position - obj.Position).Magnitude) / speed,
        Enum.EasingStyle.Linear)
    local tween = TweenService:Create(client.Character.HumanoidRootPart, info, {
        CFrame = obj
    })

    if not client.Character.HumanoidRootPart:FindFirstChild("BodyVelocity") then
        antifall = Instance.new("BodyVelocity", client.Character.HumanoidRootPart)
        antifall.Velocity = Vector3.new(0, 0, 0)
        noclipE = game:GetService("RunService").Stepped:Connect(noclip) 
        tween:Play()
    end

    tween.Completed:Connect(function()
        antifall:Destroy()
        noclipE:Disconnect()
    end)
end



Main:AddToggle("Infinite Stamina", false, function(state)
    getgenv().InfiniteStamina = state
end)

Main:AddToggle("Instant Respawn", false, function(state)
    getgenv().InstantRespawn = state
end)

Main:AddToggle("No Jump Cooldown", false, function(state)
    getgenv().NoJumpCooldown = state
end)

Main:AddToggle("No Scp Detection", false, function(state)
    getgenv().NoDetection = state
end)

Main:AddSeperator("Seperator")

plr:AddButton("Hide User", function()
    game:GetService("Players").LocalPlayer.Character.Head.Overhead.OverheadUI.PlrName:Destroy()
end)

plr:AddButton("Respawn / Reset", function()
    game:GetService("ReplicatedStorage").Died:FireServer(2)
end)


plr:AddButton("Die", function()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
end)

misc:AddSeperator("Teams")

local tele_cframes = {
    ["Security Department"] = CFrame.new(124.521507, 5.6260376, 453.175842, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    ["Mobile Task Force"] = CFrame.new(110.130745, 16.8673649, 494.996368, 0.191097319, 4.15405204e-08, -0.981571078, 2.27361707e-09, 1, 4.27630766e-08, 0.981571078, -1.04036264e-08, 0.191097319),
    ["Class D Lobby"] = CFrame.new(-370.472656, -1.49572659, 541.101868, -0.0968746319, 6.25438616e-08, -0.995296597, 6.28896188e-08, 1, 5.67182177e-08, 0.995296597, -5.70992675e-08, -0.0968746319),
    ["Containment Gate 1"] = CFrame.new(-218.655579, 5.50426769, 515.203796, 0.382364631, -4.5630415e-08, -0.924011528, 9.07623772e-08, 1, -1.18246275e-08, 0.924011528, -7.93441615e-08, 0.382364631),
    ["CDA Enterance"] = CFrame.new(-274.151123, -1.49573231, 568.281677, 0.990677357, -3.36712915e-08, -0.136228934, 2.23457555e-08, 1, -8.46652384e-08, 0.136228934, 8.08317964e-08, 0.990677357),
    ["Office Wing"] = CFrame.new(-274.151123, -1.49573231, 568.281677, 0.990677357, -3.36712915e-08, -0.136228934, 2.23457555e-08, 1, -8.46652384e-08, 0.136228934, 8.08317964e-08, 0.990677357),
    ["Science Lab"] = CFrame.new(-274.151123, -1.49573231, 568.281677, 0.990677357, -3.36712915e-08, -0.136228934, 2.23457555e-08, 1, -8.46652384e-08, 0.136228934, 8.08317964e-08, 0.990677357)
}

local places = {}
for i,v in pairs(tele_cframes) do
    if not table.find(places, i) then
        table.insert(places, i)
    end
end


tele:AddDropdown("Area Selection", places, "Select Area", false, function(x)
    getgenv().wantedplace = x
end)

tele:AddButton("Teleport [High Ban-Risk 99%]", function()

    local CoreGui = game:GetService("StarterGui")

    CoreGui:SetCore("SendNotification", {Title = "muz.wtf"; Text = "This has a high bank risk, leave if you don't want to proceed"; Duration = 3; Button1 = "Okay";})

    wait(3)

    moveto(tele_cframes[getgenv().wantedplace] + Vector3.new(0,0,3), 50)

end)

misc:AddButton("[Security Department]", function()
    game.ReplicatedStorage.Team:FireServer("SD")
end)

misc:AddButton("[Mobile Task Force]", function()
    game.ReplicatedStorage.Team:FireServer("MTF")
end)

misc:AddButton("[Class-D]", function()
    game.ReplicatedStorage.Team:FireServer("CD") 
end)

misc:AddButton("[Scientific Department]", function()
    game.ReplicatedStorage.Team:FireServer("ScD")
end)

local old
old = hookmetamethod(game, "__namecall", function(self, ...)
    
  args = {...}
  
  if self.Name == "Died" and InstantRespawn then
      if args[1] == 1 then
          args[1] = 2 
          return old(self, unpack(args))
      end
  end
  
  return old(self, ...)
  
end)


local mt = getrawmetatable(game)

local old = mt.__index 

setreadonly(mt, false)

mt.__index = newcclosure(function(self, key)
    
    if tostring(self) == "Stamina" and key == "Value" and InfiniteStamina then
        return 149
    end
    
    return old(self, key)
    
end)

setreadonly(mt, true)


game:GetService("RunService").Heartbeat:Connect(function()
    if NoJumpCooldown == true then
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("JumpDebounce") then
            game:GetService("Players").LocalPlayer.Character.JumpDebounce:Destroy()
        end
    end
end)

game:GetService("RunService").Heartbeat:Connect(function()
    if NoDetection == true then
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Scp096Detection") then
            game:GetService("Players").LocalPlayer.Character.Scp096Detection:Destroy()
        end
    end
end)

serv:AddButton("Remove Walk Sounds", function()

    local wsremote = game.Workspace.WalkSound.RemoteEvent
    
    local old;
    old = hookmetamethod(game, '__namecall', function(self, ...)
        
        local args = {...}
        
        local method = getnamecallmethod()
        
        if not checkcaller() and tostring(method) == 'FireServer' and self == wsremote then
            return
        end

        return old(self, ...)
    end)
end)


serv:AddButton("Noclip", function()
    for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
        if v:IsA("BasePart") and v.CanCollide == true then
            v.CanCollide = false
            game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
        end
    end
end)


serv:AddButton("Remove Lighting", function()
    pcall(function()
        game:GetService("Lighting").Blur:Destroy()
        game:GetService("Lighting").ColorCorrection:Destroy()
        game:GetService("Lighting").OutdoorAtmosphere:Desroy()
    end)
end)

serv:AddSeperator("Misc")

serv:AddButton("Block PlrList Remote ( Causes Lag )", function()

    
    local old;
    old = hookmetamethod(game, '__namecall', function(self, ...)
        
        local args = {...}
        
        local method = getnamecallmethod()
        
        if not checkcaller() and tostring(method) == 'InvokeServer' and tostring(self) == 'playerlistLvl' then
            return
        end

        return old(self, ...)
    end)
end)

serv:AddButton("Rejoin Server", function()

    local CoreGui = game:GetService("StarterGui")
    CoreGui:SetCore("SendNotification", {Title = "muz.wtf"; Text = "Attemping to rejoin server"; Duration = 5; Button1 = "Ok"; })

    game:GetService("TeleportService"):Teleport(game.PlaceId)
end)

serv:AddButton("Server Hop", function()

    local CoreGui = game:GetService("StarterGui")
    CoreGui:SetCore("SendNotification", {Title = "muz.exe"; Text = "Attemping to server hop"; Duration = 5; Button1 = "Ok"; })

    local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
    module:Teleport(game.PlaceId)
end)

local function DiscordInviter(DiscordCode)

    pcall(function()
        local JSONEncode, JSONDecode, GenerateGUID = game.HttpService.JSONEncode, game.HttpService.JSONDecode,
            game.HttpService.GenerateGUID
        local Request = syn and syn.request or request
        Request({
            Url = "http://127.0.0.1:6463/rpc?v=1",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json",
                ["Origin"] = "https://discord.com"
            },
            Body = JSONEncode(game.HttpService, {
                cmd = "INVITE_BROWSER",
                args = {
                    code = DiscordCode
                },
                nonce = GenerateGUID(game.HttpService, false)
            })
        })
    end)
end

cred:AddButton("Press to join discord", function()
    pcall(function()
        DiscordInviter("fKuzp8YDmT")
    end)
end)

local admins = {
    "Visceraled",
    "AdministratedAdmin",
    "XahnChronoktus",
    "BananDev",
    "shadow9487",
    "NotReallyGordon",
    "Mr_Achromatic413",
    "brandon15212",
    "LuxGoats",
    "Sedona92",
    "Operator682",
    "ThetaFive",
    "KINGMIKE3271",
    "friedmacaronibacon",
    "Brog0",
    "PhantomLuisYT",
    "Im_ZuRaFa",
    "Maxtheazazel12",
    "CharbiIe",
    "fishyfishfoshy",
    "Kxliol",
    "JKnubz",
    "Forthcordian",
    "PsiMage74",
}
serv2:AddToggle("Detect If Admin Joins", false, function(x)
    getgenv().admin_detection = x
end)


        
        


web1:AddTextbox("Webhook Here", false, function(x)
    getgenv().webhook = x
end)

web1:AddToggle("Webhook Toggle", false, function(y)
    getgenv().use_webhook = y
end)

web1:AddTextbox("Discord User-ID", false, function(x)
    getgenv().userid = x
end)

web1:AddButton("Test Webhook", function()
    if getgenv().use_webhook then
    msg = {
            ["content"] = "<@!"..getgenv().userid..">",
            ["embeds"] = {{
                    ["color"] = 000000,
                    ["description"] = "testing webhook (enabled)",
                    ["author"] = {
                        ["name"] = "muz.wtf | webhook"
                    }
            }}
        }

        local response =
        syn.request({
            Url = getgenv().webhook,
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"

            },
            Body = game:GetService("HttpService"):JSONEncode(msg)
        })
    else
        msg = {
            ["content"] = "<@!"..getgenv().userid..">",
            ["embeds"] = {{
                    ["color"] = 000000,
                    ["description"] = "testing webhook (disabled)",
                    ["author"] = {
                        ["name"] = "muz.wtf | webhook"
                    }
            }}
        }

        local response =
        syn.request({
            Url = getgenv().webhook,
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"

            },
            Body = game:GetService("HttpService"):JSONEncode(msg)
        })
    end
end)


game.Players.PlayerAdded:Connect(function(plr)
    if getgenv().admin_detection and table.find(admins, plr.Name) then
        if getgenv().use_webhook then
             msg = {
            ["content"] = "<@!"..getgenv().userid..">",
            ["embeds"] = {{
                    ["color"] = 000000,
                    ["description"] = "You have been kicked, administrator joined.",
                    ["author"] = {
                        ["name"] = "muz.wtf | webhook"
                    }
            }}
        }

        local response =
        syn.request({
            Url = getgenv().webhook,
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"

            },
            Body = game:GetService("HttpService"):JSONEncode(msg)
        })
            
        game.Players.LocalPlayer:Kick("Admin Joined")
        else
            game.Players.LocalPlayer:Kick("Admin Joined")
        end
    end
end)




