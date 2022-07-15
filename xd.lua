local Tween = game:GetService("TweenService")
local ply = game.Players.LocalPlayer
local pg = ply.PlayerGui
local sc = Instance.new("ScreenGui",pg)
local frame = Instance.new("Frame")
local frame2 = Instance.new("Frame")
local uc = Instance.new("UICorner",frame2)
local us = Instance.new("UIStroke",frame2)
local False = Instance.new("TextButton")
local Skip = Instance.new("TextButton")
local True = Instance.new("TextButton")
local j1 = Instance.new("TextLabel")
local Text = Instance.new("TextLabel")
frame.Position = UDim2.new(0, 0,-0.079, 0)
frame.Size = UDim2.new(1.5, 0,1.5, 0)
frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
frame.Parent = sc
frame2.Size = UDim2.new(0,0,0,0)
frame2.Position = UDim2.new(0.32, 0,0.4, 0)
frame2.BackgroundTransparency = 1
frame2.ZIndex = 3
frame2.BackgroundTransparency = 1
us.Thickness = 0
frame2.Parent = frame
False.AnchorPoint = Vector2.new(0.5,0.5)
False.Position = UDim2.new(0.463, 0,0.307, 0)
False.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
False.TextScaled = true
False.Text = "ไม่เก่ง"
False.Size = UDim2.new(0.126, 0,0.06, 0)
False.AnchorPoint = Vector2.new(0.5,0.5)
False.Parent = frame
Skip.BackgroundColor3 = Color3.fromRGB(255, 255, 127)
Skip.Position = UDim2.new(0.585, 0,0.669, 0)
Skip.Text = "Skip"
Skip.TextScaled = true
Skip.Size = UDim2.new(0.075, 0,0.034, 0)
Skip.Parent = frame
True.Size = UDim2.new(0.126, 0,0.06, 0)
True.TextScaled = true
True.Text = "โคตรๆเก่ง"
True.Position = UDim2.new(0.18, 0,0.307, 0)
True.AnchorPoint = Vector2.new(0.5,0.5)
True.BackgroundColor3 = Color3.fromRGB(85, 255, 255)
True.Parent = frame
j1.Size = UDim2.new(0.205, 0,0.289, 0)
j1.Position = UDim2.new(0.22, 0,1, 0)
j1.Text = "🎁"
j1.ZIndex = 2
j1.TextScaled = true
j1.BackgroundTransparency = 1
j1.Parent = frame
Text.Position = UDim2.new(0.256, 0,0.06, 0)
Text.Size = UDim2.new(0.126, 0,0.066, 0)
Text.TextScaled = true
Text.BackgroundTransparency = 1
Text.Text = "เจ้าของแมพเก่งไหม?"
Text.Parent = frame
sc.IgnoreGuiInset = true
sc.Parent = pg
local BaseSiz = UDim2.new(0.126, 0,0.06, 0)
local Click = false
local Check = true



True.MouseEnter:Connect(function()
	True:TweenSize(UDim2.new(0.1, 0,0.045, 0),Enum.EasingDirection.In,Enum.EasingStyle.Linear,0.1,true)
end)
True.MouseLeave:Connect(function()
	True:TweenSize(BaseSiz,Enum.EasingDirection.Out,Enum.EasingStyle.Linear,0.1,true)

end)
True.MouseButton1Click:Connect(function()
	if Click then return end
	Click = true
	True.Text = "แน่นอนอยู่แล้วว🥱😎"
	wait(1)
	True:TweenSize(UDim2.new(0.07, 0,0.03, 0),Enum.EasingDirection.In,Enum.EasingStyle.Sine,0.1,true)
	Tween:Create(frame2.UIStroke,TweenInfo.new(1),{Thickness = 1000}):Play()
	wait(2)
	local xd = Tween:Create(frame2.UIStroke,TweenInfo.new(1),{Transparency = 1})
	script.Parent.BackgroundTransparency = 1
	xd:Play()
	Check = false
	print("XDDDDD")
	for i,v in pairs(script.Parent:GetChildren()) do
		if v ~= frame2 then
			pcall(function()
				v.Visible = false
			end)
		end
	end
	xd.Completed:Wait()
	script.Parent.Parent.Enabled = false
end)
False.MouseEnter:Connect(function()
	False:TweenSize(UDim2.new(0.1, 0,0.045, 0),Enum.EasingDirection.In,Enum.EasingStyle.Linear,0.1,true)
end)
False.MouseLeave:Connect(function()
	False:TweenSize(BaseSiz,Enum.EasingDirection.Out,Enum.EasingStyle.Linear,0.1,true)

end)
False.MouseButton1Click:Connect(function()
	if Click then return end
	Click = true
	False.Text = "ร้องๆๆ 🐔"
	wait(1)
	--game.Players.LocalPlayer:Kick(":)")
	local tt = Tween:Create(j1,TweenInfo.new(0.5),{Position = UDim2.new(0.22, 0,0.227, 0)})
	tt:Play()
	tt.Completed:Wait()
	spawn(function()
		for i = 1,15 do
			local x = Tween:Create(j1,TweenInfo.new(0.1),{Rotation = math.random(1,360)})
			x:Play()
			x.Completed:Wait()
		end
		local r = Tween:Create(j1,TweenInfo.new(0.2),{Rotation=0})
		r:Play()
		r.Completed:Wait()
		local z = j1:Clone()
		z.ZIndex = 1
		z.Parent = frame
		z.Text = "🖕"
		local t =  Tween:Create(j1,TweenInfo.new(0.5),{TextTransparency = 1})
		t:Play()
		t.Completed:Wait()
		wait(0.5)
		game.Players.LocalPlayer:Kick()
	end)
end)
Skip.MouseEnter:Connect(function()
	print("XD")
	local y = math.random(6,600)/1000
	local x = math.random(6,584)/1000
	Skip.Position = UDim2.new(x,0,y,0)
end)
