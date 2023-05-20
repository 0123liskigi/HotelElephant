local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Hotel Elephant Hub 2.0", "BloodTheme")

-- Main
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("Inf Money For Yourself", "Gives You Alot Of Money.", function()
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

-- Other
local Other = Window:NewTab("Other")
local OtherSection = Other:NewSection("Other")

OtherSection:NewButton("Loop Inf Money For Yourself", "LOOP!", function()
    for count = 0, 100, 1 do
    wait(0.05)
local A_1 = false
local A_2 = 10000000000000000 --- change the value to how many cash you want
local A_3 = "Cash"
local Event = game:GetService("ReplicatedStorage").MoneyRequest
   Event:FireServer(A_1, A_2, A_3)
end
end)

OtherSection:NewButton("Loop Inf Money For Everyone", "LOOP!", function()
        for count = 0, 100, 1 do
    wait(0.05)
local SetMoney = 10000000000000000

local plyrs = game:GetService("Players")
for _,P in pairs(plyrs:GetPlayers()) do
    local SixNine = {[1] = false, [2] = SetMoney, [3] = "Cash", [4] = P}
            
    game:GetService("ReplicatedStorage").MoneyRequest:FireServer(unpack(SixNine))
                    end
end
end)

OtherSection:NewButton("Infinite Yield", "Basically Inf Yield Admin Panel", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

OtherSection:NewButton("Btools", "Tools To Destroy The Map Or Modules FE", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/0123liskigi/HotelElephant/work/B-Tools"))()
end)

OtherSection:NewButton("Wtools", "Tools To Uhhh.. Idk", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/0123liskigi/HotelElephant/work/W-tools'))()
end)

OtherSection:NewButton("Infinite Jump", "Lets You Jump Infinitely Without Touching Ground/Grass", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/0123liskigi/HotelElephant/work/Infinite%20Jump"))()
end)
