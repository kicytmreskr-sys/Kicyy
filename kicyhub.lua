-- Kicy Hub - black/red, smaller, draggable UI

loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()(function(Library)
    local Window = Library.CreateLib("Kicy’s Instant Steal", "DarkTheme")

    -- Theme + shrink
    task.spawn(function()
        task.wait(0.2)
        for _, gui in pairs(game:GetService("CoreGui"):GetDescendants()) do
            if gui:IsA("Frame") then
                gui.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
                gui.Size = UDim2.new(gui.Size.X.Scale, gui.Size.X.Offset * 0.6, gui.Size.Y.Scale, gui.Size.Y.Offset * 0.6)
            elseif gui:IsA("TextLabel") or gui:IsA("TextButton") then
                gui.TextColor3 = Color3.fromRGB(255, 50, 50)
            elseif gui:IsA("UIStroke") then
                gui.Color = Color3.fromRGB(255, 0, 0)
            end
        end
    end)

    -- Draggable top bar
    task.spawn(function()
        task.wait(0.2)
        for _, gui in pairs(game:GetService("CoreGui"):GetDescendants()) do
            if gui:IsA("Frame") and gui.Name == "TopFrame" then
                gui.Active = true
                gui.Draggable = true
            end
        end
    end)

    -- Tabs & buttons
    local MainTab = Window:NewTab("Main")
    local MainSection = MainTab:NewSection("Kicy Hub")

    MainSection:NewButton("Load Kicy V1", "Execute Kicy V1 Script", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()
    end)

    MainSection:NewButton("Load Kicy V2", "Execute Kicy V2 Script", function()
        loadstring(game:HttpGet("https://pastefy.app/NU4lqGZe/raw"))()
    end)

    MainSection:NewButton("Load Kicy Secret Hop", "Execute Secret Hop Script", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/murilolol/nslx-autojoiner/refs/heads/main/free.lua"))()
    end)

    MainSection:NewKeybind("Toggle UI", "Show/Hide UI", Enum.KeyCode.RightControl, function()
        Library:ToggleUI()
    end)
end)
