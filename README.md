# Redz UI Library V4 

Uma biblioteca moderna de UI para Roblox, feita em Lua.  
Permite criar **painéis, abas, botões, toggles, sliders, dropdowns e muito mais**, com suporte a **temas customizáveis** e **animações fluidas**.

---

## 📦 Início Rápido

```lua
local redzlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/ShadowHub-Lynix/RedzLibV4/refs/heads/main/Source.lua"))()

-- Criar janela principal
local Window = redzlib:MakeWindow({
    Title = "REDz HUB : Example",
    SubTitle = "by : redz9999",
    LoadText = "redz Hub",
    Flags = "redz Hub | Example.lua"
})

-- Criar aba
local Tab = Window:MakeTab({Name = "Tab", Icon = "Home"})
```

---

## 👾 Exemplos de Componentes

### Seção
```lua
local Section = Tab:AddSection({"This is a Section"})
```

### Parágrafo
```lua
local Paragraph = Tab:AddParagraph({"Paragraph", "this is a Paragraph"})
```

### Botão
```lua
local Button = Tab:AddButton({
    Name = "Executar",
    Description = "Clica aqui para rodar",
    Callback = function()
        print("Botão clicado!")
    end
})
```

### Toggle
```lua
local Toggle = Tab:AddToggle({
    Name = "Ativar Sistema",
    Default = false,
    Callback = function(value)
        print("Toggle:", value)
    end
})
```

### Dropdown
```lua
local Dropdown = Tab:AddDropdown({
    Name = "Escolha uma opção",
    Options = {"A", "B", "C"},
    Default = "A",
    Callback = function(option)
        print("Selecionado:", option)
    end
})
```

### Slider
```lua
local Slider = Tab:AddSlider({
    Name = "Volume",
    Min = 0,
    Max = 100,
    Default = 50,
    Callback = function(value)
        print("Volume:", value)
    end
})
```

## Notificações

```lua
local Notify = Library:MakeNotify({
    Title = "Notification",
    Text = "This is a Notification",
    Time = 5
})
```
## 🛠️ Recursos

- ✅ UI totalmente animada com TweenService  
- ✅ Suporte a múltiplos temas  
- ✅ Sistema de salvar configurações (`SaveFolder`)  
- ✅ Notificações integradas  
- ✅ Keybind para minimizar janela  
- ✅ Use Notify:Wait() no final do seu código para a Library executar!
---

## 📌 Créditos
Criado por **redz9999 & lynix**.  
