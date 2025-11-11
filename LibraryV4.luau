-- Carregando a biblioteca RedzLib V4
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/ShadowHub-Lynix/RedzLibV4/refs/heads/main/Source.lua"))()

-- Criando a janela
local Window = Library:MakeWindow({
  Title = "REDzHUB : Brookhaven 🏡RP",
  SubTitle = "by: redz9999",
  LoadText = "REDzHUB v3.5",
  Flags = "redz Hub | Example.lua"
})

Library:SetTransparency(0)  -- Definindo transparência (0 a 1)

-- Criando uma notificação
local Notify = Library:MakeNotify({
  Title = "Notify",
  Text = "Testing notify",
  Time = 5 
})

-- Criando uma aba
local Tab = Window:MakeTab({
  Name = "Functions",
  Icon = "Settings"  -- Ícone para a aba
})

-- Criando uma seção dentro da aba
local Section = Tab:AddSection({"Section"})

-- Criando um parágrafo dentro da aba
local Paragraph = Tab:AddParagraph({"This is", "paragraph"})

-- Criando um rótulo de texto
local TextLabel = Tab:AddLabel({"textlabel"})


local Button = Tab:AddButton({
  Name = "Button",
  Callback = function()
    print("Botão clicado!")
    Library:MakeNotify({
      Title = "Alerta!",
      Text = "Você clicou no botão!",
      Time = 3
    })
  end
})

-- Criando um toggle (caixa de seleção)
local Toggle = Tab:AddToggle({
  Name = "toggle",
  Default = false,
  Callback = function(Value)
    if Value then
      print("/fling")
    else
      print("F a.")
    end
  end
})

-- Criando um dropdown (lista suspensa)
local Dropdown = Tab:AddDropdown({
  Name = "Selecionar Jogador",
  Options = {"redz", "redz2", "lynix"},
  Default = {"Opção 2"},
  MultSelect = false,
  Callback = function(Value)
    print("Você escolheu: " .. Value)
  end
})

-- Criando um slider (controle deslizante)
local Slider = Tab:AddSlider({
  Name = "slider",
  MinValue = 1,
  MaxValue = 10,
  Default = 5,
  Increase = 1,
  Callback = function(Value)
    print("Valor ajustado para: " .. Value)
  end
})

-- Criando um botão de Discord (link para o servidor)
Tab:AddDiscordInvite({
  DiscordTitle = "redz",
  DiscordIcon = "rbxassetid://15298567397",  -- Troque pelo ID correto da imagem do ícone
  DiscordLink = "redz"
})

-- Criando um botão de minimizar
Window:AddMinimizeButton({
  Button = {
    Image = "rbxassetid://15298567397"  -- Troque pelo ID correto da imagem do botão
  },
  UICorner = {true, CornerRadius = UDim.new(0.5, 0)},
  UIStroke = {false, {}}
})

-- Aguardar a notificação terminar
Notify:Wait()
