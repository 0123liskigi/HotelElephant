local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Hotel Elepahant Script By 0123liskigi", "Ocean")

-- Main
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("Inf Money", "Gives You Alot Of Money.", function()
    local A_1 = false
local A_2 = 10000000000000000 --- change the value to how many cash you want
local A_3 = "Cash"
local Event = game:GetService("ReplicatedStorage").MoneyRequest
   Event:FireServer(A_1, A_2, A_3)
end)

MainSection:NewButton("Inf Money For Everyone (Including You)", "Gives You Alot Of Money For Everyone!", function()
    local SetMoney = 10000000000000000

local plyrs = game:GetService("Players")
for _,P in pairs(plyrs:GetPlayers()) do
    local SixNine = {[1] = false, [2] = SetMoney, [3] = "Cash", [4] = P}
            
    game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(SixNine))
                    end
end)

-- Player
local Player = Window:NewTab("Player")
local PlayerSection = Player:NewSection("Player")

PlayerSection:NewSlider("WalkSpeed", "Changes Your Workspace Speed", 500, 16, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

PlayerSection:NewSlider("JumpPower", "lets you jump higher", 350, 50, function(s) -- 350 (MaxValue) | 50 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

-- Blatant
local Blatant = Window:NewTab("Blatant")
local BlatantSection = Blatant:NewSection("Blatant")

BlatantSection:NewButton("Infinite Yield", "Basically Inf Yield Admin Panel", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

BlatantSection:NewButton("Btools", "Tools To Destroy The Map Or Modules", function()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()
end)

BlatantSection:NewButton("Infinite Jump", "Lets You Jump Infinitely Without Touching Ground/Grass...", function()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Infinite%20Jump.txt"))()
end)
