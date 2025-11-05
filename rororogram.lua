

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
                ByteNetReliable:FireServer(buffer.fromstring("\9\1\0\0\0\0Homemade Cake"))
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
                ByteNetReliable:FireServer(buffer.fromstring("\9\1\0\0\0\8\0Toy Bear"))
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
                ByteNetReliable:FireServer(buffer.fromstring("\9\1\0\0\0\11\0Voodoo Doll"))
                task.wait(0.05)
            end
        end)
    end,
}) 