local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Jailbreak Auto-Farm | harsizcool", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
    Name = "Auto-Farm",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
    Name = "Main"
})

Tab:AddButton({
    Name = "Start Auto-Farm",
    Callback = function()
        print("Auto-Farm started by harsizcool")
        -- Auto-Farm logic goes here
        while true do
            wait(1)
            -- Example: collect cash (replace with actual auto-farm logic)
            game:GetService("ReplicatedStorage").Events.CollectCash:FireServer()
        end
    end    
})

Tab:AddButton({
    Name = "Stop Auto-Farm",
    Callback = function()
        print("Auto-Farm stopped by harsizcool")
        -- Logic to stop auto-farm
        break
    end    
})

Tab:AddBind({
    Name = "Toggle Auto-Farm",
    Default = Enum.KeyCode.E,
    Hold = false,
    Callback = function()
        print("Toggle Auto-Farm by harsizcool")
        -- Logic to toggle auto-farm
        -- Example: toggle a boolean to start/stop auto-farm
        autoFarm = not autoFarm
        if autoFarm then
            print("Auto-Farm started by harsizcool")
            while autoFarm do
                wait(1)
                -- Example: collect cash (replace with actual auto-farm logic)
                game:GetService("ReplicatedStorage").Events.CollectCash:FireServer()
            end
        else
            print("Auto-Farm stopped by harsizcool")
        end
    end    
})

OrionLib:Init()
