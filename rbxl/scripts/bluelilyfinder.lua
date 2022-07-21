
local settings = getgenv().settings

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

spawn(function()
    while task.wait() do
        if settings["Flower_Farm"] == true then
            
        pcall(function()
        for _, v in pairs(game:GetService("Workspace")["Demon_Flowers_Spawn"]:GetChildren()) do
    if v:IsA("Model") then
        moveto(v:GetModelCFrame(), 100)
        fireproximityprompt(v["Cube.002"]["Pick_Demon_Flower_Thing"])
    end
end
end)
end
end
end)
