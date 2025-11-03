local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ByteNetUnreliable = ReplicatedStorage:WaitForChild("ByteNetUnreliable")
local ByteNetReliable = ReplicatedStorage:WaitForChild("ByteNetReliable")


local Window = Rayfield:CreateWindow({
   Name = "Mops v.BETA main window",
   Icon = 0,
   LoadingTitle = "Mops Hub v.BETA",
   LoadingSubtitle = "by Mops",
   ShowText = "Mops Hub v.BETA",
   Theme = "Default",

   ToggleUIKeybind = "K",

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false,

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil,
      FileName = "Mops Hub v.BETA"
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
    Name = "Auto Click",
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

local basketToggle = false
GiftsTab:CreateToggle({
    Name = "spam buy Spring Basket",
    CurrentValue = false,
    Callback = function(Value)
        basketToggle = Value
        task.spawn(function()
            while basketToggle do
                ByteNetReliable:FireServer(buffer.fromstring("\9\1\0\0\0\0Spring Basket"))
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
            while basketToggle do
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
            while basketToggle do
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
            while basketToggle do
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
            while basketToggle do
                ByteNetReliable:FireServer(buffer.fromstring("\9\1\0\0\0\3\0Eye"))
                task.wait(0.05)
            end
        end)
    end,
}) 


local RayderToggle = false
GiftsTab:CreateToggle({
    Name = "Low Rayder spam buy",
    CurrentValue = false,
    Callback = function(Value)
        RayderToggle = Value
        task.spawn(function()
            while basketToggle do
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
            while basketToggle do
                ByteNetReliable:FireServer(buffer.fromstring("\9\1\0\0\0\0Homemade Cake")
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
            while basketToggle do
                ByteNetReliable:FireServer(buffer.fromstring("\9\1\0\0\0\8\0Toy Bear")
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
            while basketToggle do
                ByteNetReliable:FireServer(buffer.fromstring("\9\1\0\0\0\11\0Voodoo Doll")
                task.wait(0.05)
            end
        end)
    end,
}) 