-- Pegando a lib RedzLibV5 
local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/RedzLibV5/main/Source.lua"))()

-- Construindo a janela
local Window = redzlib:MakeWindow({
    Title = "SD-Goal Hub",
    SubTitle = "Made by Guhttanin",
    SaveFolder = "Redz Config"
})

-- Construindo o botão de minimizar a janela
Window:AddMinimizeButton({
    Button = {
        Image = "rbxassetid://115626219720163",
        BackgroundTransparency = 0
    },
    Corner = {
        CornerRadius = UDim.new(0, 5)
    }
})

-- Variáveis para o resto do código 
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local targetCFrame
local VirtualInputManager = game:GetService("VirtualInputManager")

-- Funções 
local function TP(x, y, z, rx, ry, rz)
    local targetCFrame = CFrame.new(x, y, z) * CFrame.Angles(rx, ry, rz)
    character:SetPrimaryPartCFrame(targetCFrame)
end

TP(-124.854996, 32.0230446, 499.881866, 1, 0, 0) -- Exemplo de chamada
-- Construindo a TAB de Auto Farm Banco
local AutoFarmBanco_tab = Window:MakeTab({"Auto Farm Banco", "sla"})

-- Botão para iniciar roubo
AutoFarmBanco_tab:AddButton({"Iniciar Roubo", function()
    -- Colocando um CFrame na variável targetCFrame
    targetCFrame = CFrame.new(-921.370667, 49.0120926, 580.083923, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    -- Teletransportando o jogador até o CFrame definido na variável targetCFrame, que no caso é o CFrame da loja ilegal la da Aliança 
    character:SetPrimaryPartCFrame(targetCFrame)

    -- Espera 0.2 segundos
    wait(0.2)

    -- Argumentos para o Remote Event de Comprar C4
    local args = {
        [1] = "IlegalShop",
        [2] = "Buy",
        [3] = "C4"
    }

    -- Remote Event de comprar a C4
    game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("ClientPurchases"):FireServer(unpack(args))

    -- espera 0.2 segundos 
    wait(0.2)

    -- Variável que contém o inventário do jogador
    local backpack = player:WaitForChild("Backpack")
    -- A C4
    local tool = backpack:WaitForChild("C4")

    -- Coloca a C4 na mão do jogador para deixar pronto
    tool.Parent = character

    -- espera 0.2 segundos
    wait(0.2)

    -- mesmo esquema dos CFrames acima, só que aqui é a porta da C4 do banco
    targetCFrame = CFrame.new(60.9868698, 16.2101593, 41.6791344, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    character:SetPrimaryPartCFrame(targetCFrame)

    -- espera 0.2 segundos
    wait(0.2)

    -- parte importante, deixa o ProximtyPrompt com o HoldDuration com valor 0 para retirar o tempo de espera para colocar a C4
    workspace.Map.Robberies.Bank.VaultDoor.C4.Handle.ProximityPrompt.HoldDuration = 0

    -- espera 0.2 segundos
    wait(0.2)

    -- simula que apertou a tecla E para colocar a bomba 
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)

    -- fim, que trabalho para fazer esses comentários
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

local statusLabel = workspace.Map.Robberies.Bank.StatusDisplay.SurfaceGui.TextLabel

local function atualizarStatus()
    if statusLabel.Text == "ABERTO" then
        SB_Label:SetTitle("Status: <font color='rgb(0, 255, 0)'>ABERTO</font>")
    elseif statusLabel.Text == "FECHADO" then
        SB_Label:SetTitle("Status: <font color='rgb(255, 0, 0)'>FECHADO</font>")
    end
end

statusLabel:GetPropertyChangedSignal("Text"):Connect(function()
    atualizarStatus()
end)

atualizarStatus()

local TP_Tab = Window:MakeTab({"Teleport", "Portal"})

TP_Tab:AddSection("Cidade")

TP_Tab:AddButton({"Teletransportar para a Loja de Armas", function()
    TP(-124.854996, 32.0230446, 499.881866, 0, 0, 0)
end})

TP_Tab:AddButton({"Teletransportar para o Posto de Gasolina", function()
    TP(146.707809, 31.7656364, 439.716553, 0, 0, 0)
end})

TP_Tab:AddButton({"Teletransportar para a Garagem", function()
    TP(-256.281769, 31.6875458, 98.6261063, 0, 0, 0)
end})

TP_Tab:AddButton({"Teletransportar para o Banco", function()
    TP(108.752861, 36.4875107, 15.5737019, 0, 0, 0)
end})

TP_Tab:AddButton({"Teletransportar para a Joalheria", function()
    TP(-96.6770248, 31.6303158, 250.667328, 0, 0, 0)
end})

TP_Tab:AddSection("Exército Brasileiro")

TP_Tab:AddButton({"Teletransportar para o Exército Brasileiro (fora)", function()
    TP(-58.8901863, 31.6249809, 664.38031, 0, 0, 0)
end})

TP_Tab:AddSection("Aliança")

TP_Tab:AddButton({"Teletransportar para a Aliança (fora)", function()
    TP(-890.466431, 50.9588318, 711.995117, 0, 0, 0)
end})
