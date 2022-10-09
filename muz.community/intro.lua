local game_tables = loadstring(game:HttpGet("https://raw.githubusercontent.com/muzscripter/projects/main/muz.community/games.lua"))();
loadstring(game:HttpGet("https://raw.githubusercontent.com/muzscripter/projects/main/muz.community/systems.lua"))();

-- Gui to Lua
-- Version: 3.2

-- Instances:

local muzdojo = Instance.new("ScreenGui")
local mainframe = Instance.new("Frame")
local UIGradient = Instance.new("UIGradient")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local Execute = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local UICorner_3 = Instance.new("UICorner")
local TextLabel_3 = Instance.new("TextLabel")
local TextLabel_4 = Instance.new("TextLabel")
local verified_user = Instance.new("ImageButton")
local group = Instance.new("ImageButton")
local group_2 = Instance.new("ImageButton")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

--Properties:

muzdojo.Name = "muz.dojo"
muzdojo.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
muzdojo.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

mainframe.Name = "mainframe"
mainframe.Parent = muzdojo
mainframe.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mainframe.BackgroundTransparency = 0.350
mainframe.BorderSizePixel = 0
mainframe.Position = UDim2.new(0.215266526, 0, 0.220318228, 0)
mainframe.Size = UDim2.new(0, 750, 0, 456)

UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(234, 116, 207)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(232, 255, 232))}
UIGradient.Parent = mainframe

UICorner.Parent = mainframe

TextLabel.Parent = mainframe
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.366666675, 0, 0.100877196, 0)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.Nunito
TextLabel.Text = "MUZ.DOJO"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 30.000

TextLabel_2.Parent = mainframe
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(0.366666675, 0, 0.223684222, 0)
TextLabel_2.Size = UDim2.new(0, 200, 0, 50)
TextLabel_2.Font = Enum.Font.Nunito
TextLabel_2.Text = "Press execute to get access to the script."
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 30.000

Execute.Name = "Execute"
Execute.Parent = mainframe
Execute.BackgroundColor3 = Color3.fromRGB(233, 239, 255)
Execute.Position = UDim2.new(0.0813333318, 0, 0.804824591, 0)
Execute.Size = UDim2.new(0, 629, 0, 50)
Execute.Font = Enum.Font.Highway
Execute.Text = "EXECUTE"
Execute.TextColor3 = Color3.fromRGB(255, 255, 255)
Execute.TextSize = 44.000

UICorner_2.Parent = Execute

ImageLabel.Parent = Execute
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.Size = UDim2.new(0, 629, 0, 50)
ImageLabel.Image = "http://www.roblox.com/asset/?id=4491416742"
ImageLabel.ImageTransparency = 0.900

UICorner_3.Parent = ImageLabel

TextLabel_3.Parent = mainframe
TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.BackgroundTransparency = 1.000
TextLabel_3.Position = UDim2.new(0.366666675, 0, 0.421052635, 0)
TextLabel_3.Size = UDim2.new(0, 200, 0, 50)
TextLabel_3.Font = Enum.Font.Nunito
TextLabel_3.Text = "Server : https://discord.gg/QBdvJ5QymP"
TextLabel_3.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_3.TextSize = 30.000

TextLabel_4.Parent = mainframe
TextLabel_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.BackgroundTransparency = 1.000
TextLabel_4.Position = UDim2.new(0.366666675, 0, 0.530701756, 0)
TextLabel_4.Size = UDim2.new(0, 200, 0, 50)
TextLabel_4.Font = Enum.Font.Nunito
TextLabel_4.Text = "Paid  Ver [ 5$ ] : https://discord.gg/MF6f8qq2Pt"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextSize = 30.000

verified_user.Name = "verified_user"
verified_user.Parent = mainframe
verified_user.BackgroundTransparency = 1.000
verified_user.Position = UDim2.new(0.59043014, 0, 0.127447993, 0)
verified_user.Size = UDim2.new(0, 25, 0, 25)
verified_user.ZIndex = 2
verified_user.Image = "rbxassetid://3926305904"
verified_user.ImageRectOffset = Vector2.new(324, 524)
verified_user.ImageRectSize = Vector2.new(36, 36)

group.Name = "group"
group.Parent = mainframe
group.BackgroundTransparency = 1.000
group.Position = UDim2.new(0.789333344, 0, 0.447368413, 0)
group.Size = UDim2.new(0, 25, 0, 25)
group.ZIndex = 2
group.Image = "rbxassetid://3926305904"
group.ImageRectOffset = Vector2.new(4, 844)
group.ImageRectSize = Vector2.new(36, 36)

group_2.Name = "group"
group_2.Parent = mainframe
group_2.BackgroundTransparency = 1.000
group_2.Position = UDim2.new(0.837333322, 0, 0.557017565, 0)
group_2.Size = UDim2.new(0, 25, 0, 25)
group_2.ZIndex = 2
group_2.Image = "rbxassetid://3926305904"
group_2.ImageRectOffset = Vector2.new(4, 844)
group_2.ImageRectSize = Vector2.new(36, 36)

UIAspectRatioConstraint.Parent = muzdojo
UIAspectRatioConstraint.AspectRatio = 1.988

-- Scripts:

local function IIJYIYC_fake_script() -- Execute.Script 
	local script = Instance.new('Script', Execute)

	script.Parent.MouseButton1Click:Connect(function()
		
		local TweenService = game:GetService("TweenService")
		local time = 2
		local tween = TweenService:Create(script.Parent.Parent, TweenInfo.new(time), {Transparency = 1})
	
		tween:Play()
		
		for i,v in pairs(script.Parent.Parent:GetChildren()) do
			if v:IsA("ImageButton") then
					local TweenService = game:GetService("TweenService")
					local time = 2
					local tween = TweenService:Create(v, TweenInfo.new(time), {ImageTransparency = 1})
	
				tween:Play()
			elseif v:IsA("TextLabel") then
				local TweenService = game:GetService("TweenService")
				local time = 2
				local tween = TweenService:Create(v, TweenInfo.new(time), {TextTransparency = 1})
	
				tween:Play()
			end
		end
		
			
		wait(1.7)
		
		
		script.Parent.Parent:Destroy()
		
		pcall(function() return loadstring(game:HttpGet(game_tables[game.PlaceId]))() end);
		Notify("MUZ.DOJO | Notification","Attempting to execute script",5)
	end)
end
coroutine.wrap(IIJYIYC_fake_script)()
local function OPNXJ_fake_script() -- mainframe.Dragify 
	local script = Instance.new('LocalScript', mainframe)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    local dragSpeed = 0
	    dragInput = nil
	    dragStart = nil
	    local dragPos = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	
	dragify(script.Parent)
end
coroutine.wrap(OPNXJ_fake_script)()

