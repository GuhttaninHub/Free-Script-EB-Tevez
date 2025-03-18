local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/RedzLibV5/main/Source.lua"))()

local Window = redzlib:MakeWindow({
    Title = "SD-Goal Hub",
    SubTitle = "Made by Guhttanin",
    SaveFolder = "Redz Config"
})

Window:AddMinimizeButton({
    Button = {
        Image = "rbxassetid://115626219720163",
        BackgroundTransparency = 0
    },
    Corner = {
        CornerRadius = UDim.new(0, 5)
    }
})

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local targetCFrame
local VirtualInputManager = game:GetService("VirtualInputManager")

local AutoFarmBanco_tab = Window:MakeTab({"Auto Farm Banco", "sla"})

AutoFarmBanco_tab:AddButton({"Iniciar Roubo", function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local targetCFrame = CFrame.new(-921.370667, 49.0120926, 580.083923, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    character:SetPrimaryPartCFrame(targetCFrame)

    wait(0.2)

    local args = {
        [1] = "IlegalShop",
        [2] = "Buy",
        [3] = "C4"
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("ClientPurchases"):FireServer(unpack(args))

    wait(0.2)

    local player = game.Players.LocalPlayer
    local character = player.Character
    local backpack = player:WaitForChild("Backpack")
    local tool = backpack:WaitForChild("C4")

    tool.Parent = character

    wait(0.2)

    targetCFrame = CFrame.new(60.9868698, 16.2101593, 41.6791344, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    character:SetPrimaryPartCFrame(targetCFrame)

    wait(0.2)

    workspace.Map.Robberies.Bank.VaultDoor.C4.Handle.ProximityPrompt.HoldDuration = 0

    wait(0.2)

    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
end})

local Toggle_PegarDinheiro_Banco = AutoFarmBanco_tab:AddToggle({
    Title = "Pegar Dinheiro",
    Default = false
})

local Run = false

Toggle_PegarDinheiro_Banco:Callback(function(Value)
    Run = Value
    if Run then
        task.spawn(function()
            while Run do
                targetCFrame = CFrame.new(43.2352448, 16.2101593, 28.3578701, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                character:SetPrimaryPartCFrame(targetCFrame)
                wait(0.2)
                targetCFrame = CFrame.new(56.1759377, 16.3620834, 27.7989845, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                character:SetPrimaryPartCFrame(targetCFrame)
                wait(0.2)
            end
        end)
    end
end)

AutoFarmBanco_tab:AddButton({"Entregar Dinheiro", function()
    targetCFrame = CFrame.new(-590.812012, 31.3067017, 347.676727, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    character:SetPrimaryPartCFrame(targetCFrame)
    
    wait(0.2)
    
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
    
    wait(0.2)
    
    local args = {
        [1] = "CollectCash"
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("Robbery"):FireServer(unpack(args))
end})

local SB_Label = AutoFarmBanco_tab:AddParagraph({"Status: LOADING"})

task.spawn(function()
    while true do
        if workspace.Map.Robberies.Bank.StatusDisplay.SurfaceGui.TextLabel.Text == "ABERTO" then
            SB_Label:SetTitle("Status: ABERTO")
        end
        if workspace.Map.Robberies.Bank.StatusDisplay.SurfaceGui.TextLabel.Text == "FECHADO" then
            SB_Label:SetTitle("Status: FECHADO")
        end
        wait(0.5)
    end
end)
