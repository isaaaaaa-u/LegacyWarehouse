local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local DamageRemoteEvent = workspace.GunHandler.DamageRemoteEvent
local Playerss = game:GetService'Players'

local Window = OrionLib:MakeWindow({
    Name = "Legacy Warehouse", 
    HidePremium = false, 
    SaveConfig = true, 
    ConfigFolder = "Legacy Warehouse"})

local Tab1 = Window:MakeTab({
    Name = "Godmode shit",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})
local Tab2 = Window:MakeTab({
	Name = "Kill shit",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Tab4 = Window:MakeTab({
	Name = "Fucker",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Tab3 = Window:MakeTab({
	Name = "Local Player shit",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


----//GODMODE 

Tab1:AddTextbox({
	Name = "God player",
	Default = "Enter player name",
	TextDisappear = true,
	Callback = function(Value)
		DamageRemoteEvent:FireServer(Playerss[Value].Character.Humanoid, -math.huge)
	end	  
})
Tab1:AddButton({
	Name = "God everyone",
	Callback = function()
      	for _, Child in next, game.Players:GetPlayers() do
            DamageRemoteEvent:FireServer(Child.Character.Humanoid, -math.huge)
        end
  	end    
})

---///KILL SHIT 

Tab2:AddTextbox({
	Name = "Kill player",
	Default = "Enter player name",
	TextDisappear = true,
	Callback = function(Value)
		DamageRemoteEvent:FireServer(Playerss[Value].Character.Humanoid, math.huge)
	end	  
})
Tab2:AddButton({
	Name = "Kill everyone",
	Callback = function()
      	for _, Child in next, game.Players:GetPlayers() do
            if Child ~= game.Players.LocalPlayer then
                DamageRemoteEvent:FireServer(Child.Character.Humanoid, -math.huge)
            end
        end
  	end    
})

---//FUCKER 
Tab4:AddTextbox({
	Name = "Fuck player",
	Default = "Enter player name",
	TextDisappear = true,
	Callback = function(Value)
		DamageRemoteEvent:FireServer(Playerss[Value].Character.Humanoid, math.acos(2))
	end	  
})
Tab4:AddButton({
	Name = "Fuck Everyone",
	Callback = function()
      	for _, Child in next, game.Players:GetPlayers() do
            if Child ~= game.Players.LocalPlayer then
                DamageRemoteEvent:FireServer(Child.Character.Humanoid, math.acos(2))
            end
        end
  	end    
})  
---//LOCAL PLAYER SHIT 

Tab3:AddSlider({
	Name = "WalkSpeed",
	Min = 16,
	Max = 200,
	Default = 16,
	Color = Color3.fromRGB(63, 198, 255),
	Increment = 1,
	ValueName = "Walkspeed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})
Tab3:AddSlider({
	Name = "Jump power",
	Min = 0,
	Max = 200,
	Default = 50,
	Color = Color3.fromRGB(31, 255, 23),
	Increment = 1,
	ValueName = "JumpPower",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})
Tab3:AddSlider({
	Name = "Hip Height",
	Min = 0,
	Max = 200,
	Default = 0,
	Color = Color3.fromRGB(253, 17, 17),
	Increment = 1,
	ValueName = "HipHeight",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.HipHeight = Value
	end    
})
Tab3:AddSlider({
	Name = "Gravity",
	Min = 0,
	Max = 500,
	Default = 200,
	Increment = 1,
	ValueName = "Gravity",
    Color = Color3.fromRGB(242, 249, 148),
	Callback = function(Value)
		workspace.Gravity = Value
	end
})


OrionLib:MakeNotification({
	Name = "GUI",
	Content = "Successfully loaded GUI",
	Image = "rbxassetid://4483345998",
	Time = 5
})
OrionLib:MakeNotification({
	Name = "GUI",
	Content = "Made by isaaaaa#0001",
	Image = "rbxassetid://4483345998",
	Time = 5
})
