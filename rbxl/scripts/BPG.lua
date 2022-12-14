local user = game:GetService("Players").LocalPlayer.Name

local function getBreath()
    return game:GetService("ReplicatedStorage")["Player_Data"][tostring(user)].BreathingProgress[1].Value
end

local function getBreath2()
    return game:GetService("ReplicatedStorage")["Player_Data"][tostring(user)].BreathingProgress[2].Value
end

print(getBreath())

local ex = Drawing.new("Text")
ex.Size = 30
ex.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.x / 2, workspace.CurrentCamera.ViewportSize.y / 2)
ex.Color = Color3.fromRGB(242, 243, 243)
ex.Text = tostring(getBreath()) .. "/" .. tostring(getBreath2()) .. "<- Breathing Mastery"
ex.Visible = true
ex.Center = true

wait(5)

ex:Remove()
