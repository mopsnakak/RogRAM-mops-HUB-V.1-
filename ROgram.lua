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
