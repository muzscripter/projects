local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/muzscripter/projects/main/muz.wtf/ui.lua'))()

local Box = Library.Render({
    SavePosition = true;
})

local Main = Box:Tab({
    Title = 'Main';
})

local client = game:GetService("Players").LocalPlayer
    local user = client.Name
    local TweenService = game:GetService("TweenService")
    local noclipE = nil
    local antifall = nil
    
    local function noclip()
        for i, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") and v.CanCollide == true then
                v.CanCollide = false
                game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
            end
        end
    end
    
    local function moveto(obj, speed)
        local info = TweenInfo.new(((client.Character.HumanoidRootPart.Position - obj.Position).Magnitude) / speed,Enum.EasingStyle.Linear)
        local tween = TweenService:Create(client.Character.HumanoidRootPart, info, {CFrame = obj})
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


local npcs = game:GetService("Workspace").NPCs:GetDescendants()

local mobs = {
    'High Level Aogiri';
    'Eto Boss';
    'Kuzen Boss'
}


local main_Section = Main:Section({
    Title = 'Farming';
})

main_Section:Dropdown({
    Title = 'Mob Select';
    List = mobs;
    Callback = function(x)
        getgenv().mob = x
    end
})

main_Section:Toggle({
    Title = 'Farm Mob';
    Default = false;
    Callback = function(x)
        getgenv().farm = x
    end
    
})


task.spawn(function()
    while task.wait() do
        if farm and mob then
            for i,v in next, npcs do
                if v:FindFirstChild('HumanoidRootPart') and v.Humanoid.Health > 0 then
                    repeat task.wait()
                        client.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
                    until not v:IsDescendantOf(workspace) or v.Humanoid.Health <= 0 or not farm
                end
            end
        end
    end
end)
