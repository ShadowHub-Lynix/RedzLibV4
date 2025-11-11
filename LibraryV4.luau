-- Carregar a Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/ShadowHub-Lynix/RedzLibV4/refs/heads/main/Source.lua"))()

-- Funções da Library
Library:SetTheme("Theme Name") -- Temas: https://raw.githubusercontent.com/REDzHUB/RedzLibV4/main/Themes.lua
Library:SetTransparency(0.1) -- Valores: 0 a 1
Library:GetThemes() -- Retorna uma tabela com temas disponíveis
Library:GetIcon("Icon Name")

-- Informações da Library
Library.info.PlaceName
Library.info.Version

-- Funções Globais
Instance:Destroy()
Instance:Visible(false)

-- Criar uma Janela
local Window = redzlib:MakeWindow({
    Title = "REDz HUB : Example",
    SubTitle = "by : redz9999",
    LoadText = "redz Hub",
    Flags = "redz Hub | Example.lua"
})

-- Alterar título ou imagem da janela
Window:Set("Novo Título ou Imagem")

-- Criar uma Notificação
local Notify = Library:MakeNotify({
    Title = "Notification",
    Text = "This is a Notification",
    Time = 5
})

-- Esperar a notificação acabar
Notify:Wait()

-- Criar uma Aba
local Tab = Window:MakeTab({Name = "Tab", Icon = "Home"})
Tab:Set("Novo Ícone ou Nome")

-- Criar uma Seção
local Section = Tab:AddSection({"This is a Section"})
Section:Set("Section")

-- Criar um Parágrafo
local Paragraph = Tab:AddParagraph({"Paragraph", "this is a Paragraph"})
Paragraph:Set("Novo Texto")
Paragraph:Set("Novo Nome", "Novo Texto")

-- Criar um Label de Texto
local TextLabel = Tab:AddLabel({"Text", "This is a Text Label"})
TextLabel:Set("Novo Nome")

-- Criar um Label de Imagem
local ImageLabel = Tab:AddLabel({"Image", "This is a Image Label", "rbxassetid://"})
ImageLabel:Set("Novo Nome", "Nova Imagem")

-- Criar um Botão
local Button = Tab:AddButton({
    Name = "Button",
    Callback = function()
        -- Código do botão
    end
})
Button:Callback(function()
    -- Novo callback
end)
Button:Set("Novo Nome")

-- Criar um Toggle
local Toggle = Tab:AddToggle({
    Name = "Toggle",
    Default = false,
    Callback = function(Value)
        -- Código para quando mudar
    end
})
Toggle:Set(false)
Toggle:Callback(function(Value)
    -- Código para novo callback
end)

-- Criar um Dropdown
local Dropdown = Tab:AddDropdown({
    Name = "Dropdown",
    Options = {"1", "2", "3"},
    Default = {"2"},
    MultSelect = false,
    Callback = function(Value)
        -- Código quando selecionar
    end
})
Dropdown:Set({"one", "two", "three"}, true)
Dropdown:Callback(function(Value)
    -- Novo callback
end)

-- Criar um Slider
local Slider = Tab:AddSlider({
    Name = "Slider",
    MinValue = 1,
    MaxValue = 10,
    Default = 5,
    Increase = 1,
    Callback = function(Value)
        -- Código do slider
    end
})
Slider:Set(7)
Slider:Callback(function(Value)
    -- Novo callback
end)

-- Criar convite do Discord
Tab:AddDiscordInvite({
    DiscordTitle = "REDz Hub | Community",
    DiscordIcon = "rbxassetid://15298567397",
    DiscordLink = "https://discord.gg/7aR7kNVt4g"
})

-- Criar botão de minimizar
Window:AddMinimizeButton({
    Button = {
        Image = "rbxassetid://15298567397"
    },
    UICorner = {true,
        CornerRadius = UDim.new(0.5, 0)
    },
    UIStroke = {false, {}}
})
