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
local character = player.Character
local targetCFrame
local VirtualInputManager = game:GetService("VirtualInputManager")
local RS = game:GetService("RunService")
local wait_
local esp_en
local text_reservedserver

task.spawn(function()
    while true do
        if player.Character ~= character then
            character = player.Character
        end
        wait(1)
    end
end)

-- Funções 
-- Nenhuma

-- Construindo a TAB de Auto Farm Banco
local Farm_tab = Window:MakeTab({"Farm", "Home"})

local Banco_tab = Window:MakeTab({"Banco", "landmark"})

Banco_tab:AddSection({"Farm"})
-- Botão para iniciar roubo
Banco_tab:AddButton({"Iniciar Roubo", function()
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

local Toggle_PegarDinheiro_Banco = Banco_tab:AddToggle({
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

Banco_tab:AddButton({"Entregar Dinheiro", function()
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

Banco_tab:AddSection({"Status"})

local SB_Label = Banco_tab:AddParagraph({"Status: LOADING"})

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

local TP_Tab = Window:MakeTab({"Teleport", "locate"})

TP_Tab:AddSection("Cidade")

TP_Tab:AddButton({"Teletransportar para a Loja de Armas", function()
    targetCFrame = CFrame.new(-124.854996, 32.0230446, 499.881866)
    character:SetPrimaryPartCFrame(targetCFrame)
end})

TP_Tab:AddButton({"Teletransportar para o Posto de Gasolina", function()
    targetCFrame = CFrame.new(146.707809, 31.7656364, 439.716553)
    character:SetPrimaryPartCFrame(targetCFrame)
end})

TP_Tab:AddButton({"Teletransportar para a Garagem", function()
    targetCFrame = CFrame.new(-256.281769, 31.6875458, 98.6261063)
    character:SetPrimaryPartCFrame(targetCFrame)
end})

TP_Tab:AddButton({"Teletransportar para o Banco", function()
    targetCFrame = CFrame.new(108.752861, 36.4875107, 15.5737019)
    character:SetPrimaryPartCFrame(targetCFrame)
end})

TP_Tab:AddButton({"Teletransportar para a Joalheria", function()
    targetCFrame = CFrame.new(-96.6770248, 31.6303158, 250.667328)
    character:SetPrimaryPartCFrame(targetCFrame)
end})

TP_Tab:AddSection("Exército Brasileiro")

TP_Tab:AddButton({"Teletransportar para o Exército Brasileiro (dentro)", function()
    targetCFrame = CFrame.new(-260.564667, 31.3155518, 1797.7998, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    character:SetPrimaryPartCFrame(targetCFrame)
end})

TP_Tab:AddButton({"Teletransportar para o Exército Brasileiro (fora)", function()
    targetCFrame = CFrame.new(-58.8901863, 31.6249809, 664.38031)
    character:SetPrimaryPartCFrame(targetCFrame)
end})

TP_Tab:AddSection("Aliança")

TP_Tab:AddButton({"Teletransportar para a Aliança (dentro)", function()
    targetCFrame = CFrame.new(-1169.37061, 101.298706, 373.718201, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    character:SetPrimaryPartCFrame(targetCFrame)
end})

TP_Tab:AddButton({"Teletransportar para a Aliança (fora)", function()
    targetCFrame = CFrame.new(-890.466431, 50.9588318, 711.995117)
    character:SetPrimaryPartCFrame(targetCFrame)
end})

TP_Tab:AddSection("Revolução Trabalhista")

TP_Tab:AddButton({"Teletransportar para a Revolução Trabalhista (fora)", function()
    targetCFrame = CFrame.new(357.093536, 31.0223541, 283.420471, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    character:SetPrimaryPartCFrame(targetCFrame)
end})

TP_Tab:AddButton({"Teletransportar para a Aliança (dentro)", function()
    targetCFrame = CFrame.new(687.061646, 31.4687767, 163.411301, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    character:SetPrimaryPartCFrame(targetCFrame)
end})

local Toggle_AutoFarmBanco_Auto = Farm_tab:AddToggle({
    Title = "Auto Farm Banco (AFK ✅)",
    Default = false
})

Toggle_AutoFarmBanco_Auto:Callback(function(Value)
    Run_AFBA = Value
    task.spawn(function()
        while Run_AFBA do 
            wait(0.2)
            if workspace.Map.Robberies.Bank.StatusDisplay.SurfaceGui.TextLabel.Text == "ABERTO" then
                if workspace.Map.Robberies.Bank.BankArea.Alarm.Playing == true then
                    while workspace.Map.Robberies.Bank.BankArea.Alarm.Playing do
                        if not Run_AFBA then
                            break
                        end
                        if not wait_ then
                            targetCFrame = CFrame.new(43.2352448, 16.2101593, 28.3578701, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                            character:SetPrimaryPartCFrame(targetCFrame)
                            wait(0.2)
                            targetCFrame = CFrame.new(56.1759377, 16.3620834, 27.7989845, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                            character:SetPrimaryPartCFrame(targetCFrame)
                            wait(0.2)
                            local money_bag = workspace:FindFirstChild(player.Name):WaitForChild("Money Bag").Handle.DataAttachment.BillboardGui.Frame.Money
                            local money_bag_value = tonumber(money_bag.Text:match("R%$(%d+)"))
                            if money_bag_value >= 4000 then
                                targetCFrame = CFrame.new(-590.812012, 31.3067017, 347.676727, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                                character:SetPrimaryPartCFrame(targetCFrame)
                                wait(0.2)
                                VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.E, false, game)
                                wait(0.2)
                                local args = {
                                    [1] = "CollectCash"
                                }
                                game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("Robbery"):FireServer(unpack(args))
                                wait(0.2)
                             end
                        else
                            targetCFrame = CFrame.new(56.1759377, 16.3620834, 27.7989845, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                            character:SetPrimaryPartCFrame(targetCFrame)
                            wait(12)
                            targetCFrame = CFrame.new(43.2352448, 16.2101593, 28.3578701, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                            character:SetPrimaryPartCFrame(targetCFrame)
                            wait_ = false
                        end
                    end
                elseif workspace.Map.Robberies.Bank.BankArea.Alarm.Playing == false then
                    targetCFrame = CFrame.new(-921.370667, 49.0120926, 580.083923, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                    character:SetPrimaryPartCFrame(targetCFrame)
                    wait(0.2)
                    local args = {
                        [1] = "IlegalShop",
                        [2] = "Buy",
                        [3] = "C4"
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("ClientPurchases"):FireServer(unpack(args))
                    wait(0.2)
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
                    wait(0.5)
                    wait_ = true
                end
            end
        end
    end)
end)

local esp_tab = Window:MakeTab({"ESP", "eye"})

local Toggle_esp = esp_tab:AddToggle({
    Title = "ESP - Players",
    Default = false
})

Toggle_esp:Callback(function(Value)
    Run_TE = Value
    local Players = game:GetService("Players")
    local client = Players.LocalPlayer
        
    local function esp(a)
        local b = Instance.new("BillboardGui")
        b.Name = "x"
        b.Parent = a
        b.Adornee = a
        b.Size = UDim2.new(0, 100, 0, 50)
        b.AlwaysOnTop = true 
    
        local c = Instance.new("TextLabel")
        c.Parent = b
        c.Size = UDim2.new(1, 0, 1, 0)
        c.Text = a.Name
        c.TextSize = 10
        c.TextColor3 = Color3.fromRGB(0, 255, 255)
        c.BackgroundTransparency = 1
        c.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
        c.TextStrokeTransparency = 1
    end

    if Run_TE == true then
        esp_en = true
        for _, p in pairs(Players:GetPlayers()) do
            if p.Character and p ~= client then
                esp(p.Character)
            end
        end
    elseif Run_TE == false then 
        esp_en = false
        for _, p in pairs(Players:GetPlayers()) do
            if p.Character and p ~= client then
                if not esp_en then
                    local char = p.Character
                    if char:FindFirstChild("x") then
                        char.x:Destroy()
                    end
                end
            end
        end
    end
end)

local ReservedServer_tab = Window:MakeTab({"Servidor Reservado", "server"})

ReservedServer_tab:AddTextBox({
    Name = "Código do servidor",
    PlaceholderText = "Digite o código",
    ClearText = false,
    Callback = function(text)
        text_reservedserver = text
    end
})

ReservedServer_tab:AddButton({"Entrar", function()
    local args = {
        [1] = "Join",
        [2] = text_reservedserver
    }

    game:GetService("ReplicatedStorage"):WaitForChild("Assets"):WaitForChild("Remotes"):WaitForChild("ReserverServer"):FireServer(unpack(args))
end})

local Discord_tab = Window:MakeTab({"Discord", "Info"})

Discord_tab:AddDiscordInvite({
    Name = "SD-Goal Hub Server Official",
    Logo = "rbxassetid://115626219720163",
    Invite = "https://discord.gg/YhqvmK3u8w"
})
