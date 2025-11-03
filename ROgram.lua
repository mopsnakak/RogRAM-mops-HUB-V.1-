local Players = game:GetService("Players")
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
 ocal Tab = Window:CreateTab("Auto Click/Fast Click")

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
                ByteNetReliable:FireServer(buffer.fromstring("\9\1\0\0\0
\0Spring Basket"))
                task.wait(0.05)
            end
        end)
    end,
})  