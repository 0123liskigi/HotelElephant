local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Hotel Elepahant Script By 0123liskigi", "DarkTheme")

-- Main
local Main = Window:NewTab("Main")
local MainSection = Tab:NewSection("Main")

MainSection:NewButton("Inf Money", "Gives You Alot Of Money.", function()
    local A_1 = false
local A_2 = 1000000000000 --- change the value to how many cash you want
local A_3 = "Cash"
local Event = game:GetService("ReplicatedStorage").MoneyRequest
   Event:FireServer(A_1, A_2, A_3)
end)

-- Player
local Player = Window:NewTab("Player")
local PlayerSection = Tab:NewSection("Player")

PlayerSection:NewSlider("WalkSpeed", "Changes Your Workspace Speed", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewSlider("JumpPower", "lets you jump higher", 350, 50, function(s) -- 350 (MaxValue) | 50 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

PlayerSection:NewButton("Inf Jump", "Basically Jump Infinitely Without Touching Ground Yay Dont Need To Touch Grass...", function()
    local InfiniteJumpEnabled = true
game:GetService("UserInputService").JumpRequest:connect(function()
	if InfiniteJumpEnabled then
		game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	end
end)
