
if not game:IsLoaded() then print('Loading') repeat task.wait() until game:IsLoaded() end

local Player = game.Players.LocalPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid
local HumanoidRootPart = Character.HumanoidRootPart
local Storage = {}
local Flags = {}
local Tick = clonefunction(tick)
local Start = Tick()
local Network = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
local Success, Response = pcall(function()
    Network:Teleport(game.PlaceId)
end)

task.spawn(function()
    while true do task.wait()
        if Settings.Chest_Farming then
            print('Starting Farm')
            
            for i,v in next, game.Workspace:GetChildren() do
                pcall(function()
                    if v:IsA("Model") and v:FindFirstChild("Inside") and v:FindFirstChild("HullEdge") then
                        print('Found Chest')
                        
                        if v.Inside:FindFirstChild('ProximityPrompt') then
                            repeat task.wait(1)
                                HumanoidRootPart.CFrame = v.HullEdge.CFrame
                                keypress(0x45)
                                task.wait(4)
                                keyrelease(0x45)
                            until not Settings.Chest_Farming or Humanoid.Health <= 0 or not v.Inside:FindFirstChild("ProximityPrompt") or not v:IsDescendantOf(workspace)
                        end
                    end
                end)
            end
        end
        
        
        task.wait(30)
        
        if Success then
            Network:Teleport(game.PlaceId)
        end
        
        syn.queue_on_teleport(print('Hello World'))
    end
end)
