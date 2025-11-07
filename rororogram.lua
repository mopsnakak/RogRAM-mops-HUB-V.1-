-- исправлено by @chillguyidk
-- credits to rayfield library devs + sigma sp

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ByteNetUnreliable = ReplicatedStorage:WaitForChild("ByteNetUnreliable")
local ByteNetReliable = ReplicatedStorage:WaitForChild("ByteNetReliable")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Modules = ReplicatedStorage:WaitForChild("Modules")
local market = require(Modules.Networking.Packets.market)

local Window = Rayfield:CreateWindow({
   Name = "Chill Guy Hub v.1",
   Icon = 0,
   LoadingTitle = "Chill Guy Hub v.1",
   LoadingSubtitle = "by Chill Guy",
   ShowText = "Chill Guy Hub v.1",
   Theme = "Default",

   ToggleUIKeybind = "K",

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "Chill Guy Hub v.1"
   },

   Discord = {
      Enabled = false,
      Invite = "noinvitelink",
      RememberJoins = true
   },

   KeySystem = false,
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"Hello"}
   }
})

local Tab = Window:CreateTab("Auto Click/Fast Click")

local clicking = false
Tab:CreateToggle({
    Name = "Auto Click (fixed)",
    CurrentValue = false,
    Callback = function(Value)
        clicking = Value
        task.spawn(function()
            while clicking do
                ByteNetUnreliable:FireServer(buffer.fromstring("\21\1"))
                task.wait()
            end
        end)
    end,
})

local CasesTab = Window:CreateTab("Cases")

CasesTab:CreateButton({
    Name = "Startoviy Kapital (500 stars one)",
    Callback = function()
        local data = string.char(
            23,0,9,0,               -- prefix
            70,114,101,101,32,67,97,115,101, -- "Free Case"
            1,0,0,0                 -- ending bytes
        )
        ByteNetReliable:FireServer(buffer.fromstring(data))
    end
})

CasesTab:CreateButton({
    Name = "Rich Case (Limited Case)",
    Callback = function()
        local data = string.char(
            23,0,12,0,               -- header
            76,105,109,105,116,101,100,32,67,97,115,101,  -- "Limited Case"
            1,0,0,0                  -- footer
        )
        ByteNetReliable:FireServer(buffer.fromstring(data))
    end
})

local GiftsTab = Window:CreateTab("Gifts")

local pepeToggle = false
GiftsTab:CreateToggle({
    Name = "Pepe spam buy",
    CurrentValue = false,
    Callback = function(Value)
        pepeToggle = Value
        task.spawn(function()
            while pepeToggle do
                ByteNetReliable:FireServer(buffer.fromstring("\5\1\0\0\0\4\0Pepe"))
                task.wait(0.05)
            end
        end)
    end,
})

local perfumeToggle = false
GiftsTab:CreateToggle({
    Name = "Perfume Bottle spam buy",
    CurrentValue = false,
    Callback = function(Value)
        perfumeToggle = Value
        task.spawn(function()
            while perfumeToggle do
                ByteNetReliable:FireServer(buffer.fromstring("\5\1\0\0\0\14\0Perfume Bottle"))
                task.wait(0.05)
            end
        end)
    end,
})

local HeartToggle = false
GiftsTab:CreateToggle({
    Name = "Heart spam buy",
    CurrentValue = false,
    Callback = function(Value)
        HeartToggle = Value
        task.spawn(function()
            while HeartToggle do  -- Исправлено: было basketToggle
                ByteNetReliable:FireServer(buffer.fromstring("\9\1\0\0\0\5\0Heart"))
                task.wait(0.05)
            end
        end)
    end,
})
local KeyToggle = false
GiftsTab:CreateToggle({
    Name = "InputKey spam buy",
    CurrentValue = false,
    Callback = function(Value)
        KeyToggle = Value
        task.spawn(function()
            while KeyToggle do  -- Исправлено: было basketToggle
                ByteNetReliable:FireServer(buffer.fromstring("\9\1\0\0\0\9\0Input Key"))
                task.wait(0.05)
            end
        end)
    end,
}) 

local popToggle = false
GiftsTab:CreateToggle({
    Name = "LolPop spam buy",
    CurrentValue = false,
    Callback = function(Value)
        popToggle = Value
        task.spawn(function()
            while popToggle do  -- Исправлено: было basketToggle
                ByteNetReliable:FireServer(buffer.fromstring("\9\1\0\0\0\6\0LolPop"))
                task.wait(0.05)
            end
        end)
    end,
}) 

local EyeToggle = false
GiftsTab:CreateToggle({
    Name = "Eye spam buy",
    CurrentValue = false,
    Callback = function(Value)
        EyeToggle = Value
        task.spawn(function()
            while EyeToggle do  -- Исправлено: было basketToggle
                ByteNetReliable:FireServer(buffer.fromstring("\9\1\0\0\0\3\0Eye"))
                task.wait(0.05)
            end
        end)
    end,
}) 

local RiderToggle = false
GiftsTab:CreateToggle({
    Name = "Low Rider spam buy",
    CurrentValue = false,
    Callback = function(Value)
        RayderToggle = Value
        task.spawn(function()
            while RiderToggle do  -- Исправлено: было basketToggle
                ByteNetReliable:FireServer(buffer.fromstring("\9\1\0\0\0\9\0Low Rider"))
                task.wait(0.05)
            end
        end)
    end,
}) 

local CakeToggle = false
GiftsTab:CreateToggle({
    Name = "Cake spam buy",
    CurrentValue = false,
    Callback = function(Value)
        CakeToggle = Value
        task.spawn(function()
            while CakeToggle do  -- Исправлено: было basketToggle
                ByteNetReliable:FireServer(buffer.fromstring("\9\1\0\0\0\13\0Homemade Cake"))  -- Исправлена длина строки и добавлена закрывающая кавычка
                task.wait(0.05)
            end
        end)
    end,
}) 

local BearToggle = false
GiftsTab:CreateToggle({
    Name = "Bear spam buy",
    CurrentValue = false,
    Callback = function(Value)
        BearToggle = Value
        task.spawn(function()
            while BearToggle do  -- Исправлено: было basketToggle
                ByteNetReliable:FireServer(buffer.fromstring("\9\1\0\0\0\8\0Toy Bear"))  -- Добавлена закрывающая кавычка
                task.wait(0.05)
            end
        end)
    end,
}) 

local dollToggle = false
GiftsTab:CreateToggle({
    Name = "Voodoo Doll spam buy",
    CurrentValue = false,
    Callback = function(Value)
        dollToggle = Value
        task.spawn(function()
            while dollToggle do  -- Исправлено: было basketToggle
                ByteNetReliable:FireServer(buffer.fromstring("\9\1\0\0\0\11\0Voodoo Doll"))  -- Добавлена закрывающая кавычка
                task.wait(0.05)
            end
        end)
    end,
})