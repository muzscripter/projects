function Notify(xTitle,xText,xDuration)
  local xText = xText or "Text"
  local xTitle = xTitle or "Title"
  local xDuration = xDuration or 5
  local RandomStr = string.format("%s%s","v",tostring(math.random(100000,200000)))
  
  local Notification = Instance.new("ScreenGui")
  local Main = Instance.new("Frame")
  local Line = Instance.new("Frame")
  local Title = Instance.new("TextLabel")
  local TitlePadding = Instance.new("UIPadding")
  local Text = Instance.new("TextLabel")
  local TextPadding = Instance.new("UIPadding")
  
  Notification.Name = RandomStr
  Notification.Parent = game.CoreGui
  Notification.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
  
  Main.Name = "Main"
  Main.Parent = Notification
  Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
  Main.BorderSizePixel = 0
  Main.Position = UDim2.new(-0.23,-125,0.85,-35)
  Main.Size = UDim2.new(0, 202, 0, 50)
  
  Line.Name = "Line"
  Line.Parent = Main
  Line.BackgroundColor3 = Color3.fromRGB(245, 158, 167)
  Line.BorderSizePixel = 0
  Line.Size = UDim2.new(0, 3, 0, 50)
  
  Title.Name = "Title"
  Title.Parent = Main
  Title.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
  Title.BackgroundTransparency = 1.000
  Title.BorderSizePixel = 0
  Title.Position = UDim2.new(0.0136360675, 0, 0, 0)
  Title.Size = UDim2.new(0, 200, 0, 25)
  Title.Font = Enum.Font.Gotham
  Title.Text = xTitle
  Title.TextColor3 = Color3.fromRGB(255, 255, 255)
  Title.TextSize = 16.000
  Title.TextXAlignment = Enum.TextXAlignment.Left
  
  TitlePadding.Name = "TitlePadding"
  TitlePadding.Parent = Title
  TitlePadding.PaddingLeft = UDim.new(0, 7)
  
  Text.Name = "Text"
  Text.Parent = Main
  Text.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
  Text.BackgroundTransparency = 1.000
  Text.BorderSizePixel = 0
  Text.Position = UDim2.new(0.0136360675, 0, 0.483333737, 0)
  Text.Size = UDim2.new(0, 200, 0, 25)
  Text.Font = Enum.Font.Gotham
  Text.Text = xText
  Text.TextColor3 = Color3.fromRGB(154, 154, 154)
  Text.TextSize = 16.000
  Text.TextXAlignment = Enum.TextXAlignment.Left
  
  TextPadding.Name = "TextPadding"
  TextPadding.Parent = Text
  TextPadding.PaddingLeft = UDim.new(0, 7)
  
  local ts1 = game:GetService("TextService"):GetTextSize(xText, 16, Enum.Font.Gotham, Vector2.new(math.huge, 16))
  local ts2 = game:GetService("TextService"):GetTextSize(xTitle, 16, Enum.Font.Gotham, Vector2.new(math.huge, 16))
  Text.Size = UDim2.new(0,ts1.X + 25,0,25)
  Title.Size = UDim2.new(0,ts2.X + 25,0,25)
  
  if ts2.X < ts1.X then 
      Main.Size = UDim2.new(0,ts1.X + 25,0,50)
  else 
      Main.Size = UDim2.new(0,ts2.X + 25,0,50)
  end
  
  spawn(function()
      Main:TweenPosition(UDim2.new(0.15,-200,0.85,80))
      wait(xDuration)
      Main:TweenPosition(UDim2.new(-0.23,-200,0.85,80))
      wait(1)
      Notification:Destroy()
  end)
end

pcall(function() syn.protect_gui(Notification) end)
