# Material Lua Remake  
A UI library inspired by [Material Lua](https://github.com/Kinlei/MaterialLua).  
This library has pretty much the exact same usage as Material Lua, but with a different look and more stuff to work with.  
*this is not meant to resemble a Material-style*  

*Last Updated: June 1, 2023*  

# This ui library is not completely finished yet, however it is usable.  

---

# Table of Contents  
- [Loadstring](#loadstring)
- [Replacer](#replacer)
- [Material.Load](#materialload)
  - [UI.new](#uinew)
  - [UI.Banner](#uibanner)
  - [UI.Notify](#uinotify)
  - [UI.Toggle](#uitoggle)
  - [UI.OpenPage](#uiopenpage)
  - [UI.PageOpened](#uipageopened)
- [Page Elements](#page-elements)
  - [Page.Button](#pagebutton)
  - [Page.Toggle](#pagetoggle)
  - [Page.Dropdown](#pagedropdown)
  - [Page.TextBox / TextField](#pagetextbox)
  - [Page.Label](#pagelabel)
  - [Page.Slider](#pageslider)
  - [Page.ColorPicker / ColorPickerNew](#pagecolorpicker)
  - [Page.Keybind](#pagekeybind)
  - [Page.ChipSet / DataTable](#pagechipset)
  - [Page.Table](#pagetable)
  - [Page.ProgressBar](#pageprogressbar)
- [Themes and Customization](#themes-and-customization)

## Loadstring  
```lua
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/zzerexx/scripts/main/MaterialLuaRemake.lua"), "MaterialLuaRemake.lua")()
```
Material Lua Remake is 100% backwards compatible! (with the exception of Themes).  
This means you can replace the Material Lua loadstring and it will still work!

---

## Replacer  
```lua
local old;old = hookfunction(game.HttpGet, function(self, url)
    if url == "https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua" then
        return old(self, "https://raw.githubusercontent.com/zzerexx/scripts/main/MaterialLuaRemake.lua")
    end
    return old(self, url)
end)
```
If you would like to use Remake instead of Material Lua on your favorite scripts, then execute this before your script!  

---

## Material.Load  
```js
<UI> Material.Load(<table> Options)
```
Creates a new `UI` with `Options`.  
Note: Remake does not support Themes or ColorOverrides yet.

### Example  
```lua
local UI = Material.Load({
    Title = "cool script",
    SubTitle = "discord.gg/coolscript",
    Icon = "images/icon.png",
    ShowInNavigator = true,
    Style = 3,
    SizeX = 400,
    SizeY = 505,
    NavigatorSize = 200,
    Theme = "Dark",
    ThemeOverrides = {}
})
```

### Options  
|Name|Type|Default|Description|
|:---|:---|:------|:----------|
|Title|String|Material Lua Remake|The title of the UI|
|SubTitle|String|nil|The sub title shown next to/below the title (depends on `ShowInNavigator`)|
|Icon|String, Number|nil|The icon shown on the left of the title.<br />This will only be visible while `ShowInNavigator` is enabled<br />Recommended Image Size: 40x40|
|ShowInNavigator|Boolean|false|If enabled, the title, subtitle, and icon will be visible in the navigator<br />`Style` must be either 3 or 4.|
|Style|Number|3|The UI style (1, 2, 3, or 4)|
|SizeX|Number|400|The width of the UI|
|SizeY|Number|505|The height of the UI|
|NavigatorSize|Number|200|The size of the Navigator<br />`Style` must be either 3 or 4.|
|Theme|String|Dark|The theme of the UI (Dark, Light, or Mocha)|
|ThemeOverrides|Table|{}|Custom overrides to change the color of specific elements|

### UI Styles  
|Style|Description|
|:----|:----------|
|1|The UI will display Tabs for each page|
|2|The UI will display Tabs for each page which have a lighter gray color|
|3|A 'Menu' button will be visible in the topbar on the left-hand side.<br />Clicking this will toggle the 'Navigator' which shows a vertical list of all pages.<br />This style can be used to show small icons beside every button.|
|4|The 'Navigator' will always be visible and will be attached to the left side of the UI contents.<br />The 'Navigator' cannot be toggle-able with this style.<br />Note that this will increase the size of the UI on the X axis based on the size of the 'Navigator'.|

### Themes
|Theme|Description|
|:----|:----------|
|Dark|The default theme. A theme on the darker side with a variety of dark and light shades of gray|
|Light|A theme on the brighter side with a combination of rich and light shades of purple.<br />Inspired by the Light theme from Material Lua.|
|Mocha|A theme on the brighter side with a variety of brown and tan colors.<br />Inspired by the Mocha theme from Material Lua.|

---

## UI.new  
```js
<Page> UI.new(<table> Options)
```
Creates a new `Page` with `Options`.  
Aliases: `UI.New`

### Example  
```lua
local Page = UI.New({
    Title = "cool script",
    ImageId = "Icons\\Image.png",
    ImageSize = Vector2.new(20, 20)
})

-- The ImageId can be the following:
-- rbxassetid://12345678 (a roblox image id)
-- 12345678 (a roblox image id without rbxassetid, this can be a string or number)
-- Icons\\Image.png (a file path, such as an image created with writefile)
```

### Options  
|Name|Type|Default|Description|
|:---|:---|:------|:----------|
|Title|String|Page|The title of the Page|
|ImageId|String, Number|nil|The image's id|
|ImageSize|Vector2|30, 30|The size of the image

---

## UI.Banner  
```js
<void> UI.Banner(<table> Options)
<void> UI.Banner(<string> Text)
```
Creates a new `Banner` with `Options`.  
If you provide a string instead of a table, it will use that as the text.

### Example  
```lua
local UI = UI.Banner({ -- You can use a table for more utility
    Text = "Would you like to copy this random text to your clipboard for no reason?",
    Callback = function(button)
        if button == "Yes" then
            setclipboard("yay!")
            UI.Banner("Success!") -- .. or use a string for quality of life
        elseif button == "No" then
            UI.Banner("unsuccessful :(")
        end
    end,
    Options = {"Yes", "No"}
})
```

### Options  
|Name|Type|Default|Description|
|:---|:---|:------|:----------|
|Text|String|nil|The text shown in the Banner|
|Callback|Function|nil|The Banner's callback<br />This is called when clicking one<br />of the buttons on the Banner|
|Options|Table|{"OK"}|The buttons on the Banner|
|Font|EnumItem|Enum.Font.Gotham|The font that is displayed on the Banner|

---

## UI.Notify  
```js
<void> UI.Notify(<table> Options)
<void> UI.Notify(<string> Text)
```
Creates a new `Notification` with `Options`.  
If you provide a string instead of a table, it will use that as the text.

### Example  
```lua
UI.Notify({
    Title = "Alert",
    Text = "something happened",
    Duration = 5,
    Callback = function(value)
        if value == "OK" then
            -- do something
        end
    end,
    Options = {"OK", "CANCEL"}
})
```

### Options  
|Name|Type|Default|Description|
|:---|:---|:------|:----------|
|Title|String|Material Lua Remake|The Notification's title|
|Text|String|Notification|The main body of text shown in the Notification|
|Duration|Number|3|How long the Notification will be displayed|
|Callback|Function|nil|The Notification's callback<br />This is called when clicking one<br />of the buttons on the Notification|
|Options|Table|{"OK"}|The buttons on the Notification|

---

## UI.Toggle  
```js
<void> UI.Toggle(<bool?> Visible)
```
Toggles UI visibility. If no argument is provided, it will set it to the opposite as the current visibility.  

### Example  
```lua
local keybind = Enum.KeyCode.RightShift
game:GetService("UserInputService").InputBegan:Connect(function(i, gp)
    if not gp and i.KeyCode == keybind then
        UI.Toggle()
    end
end)
```

---

## UI.OpenPage  
```js
<void> UI.OpenPage(<string> Page)
```
Opens the specified Page.  

### Example  
```lua
UI.OpenPage("Page 1")
```

---

## UI.PageOpened  
```js
<RBXScriptSignal> UI.PageOpened
```
Fires when a page is opened.  

### Example  
```lua
UI.PageOpened:Connect(function(page, count)
    if page == "Page1" and count == 1 then
        UI.Banner("whatever you want to say when the page is opened for the first time")
    end
end)
```

### Parameters  
|Parameter|Type|Description|
|:--------|:---|:----------|
|1|String|The page that was opened|
|2|Number|The amount of times that page has been opened|

---

# Page Elements  

## Page.Button  
```js
<Button> Page.Button(<table> Options)
```
Creates a new `Button` with `Options`.  

### Example  
```lua
local Button = Page.Button({
    Text = "Button",
    Callback = function()
        print("Button clicked")
    end
})
```

### Options  
|Name|Type|Default|Description|
|:---|:---|:------|:----------|
|Text|String|Button|The text shown on the Button|
|Callback|Function|nil|The Button's callback|
|Center|Boolean|false|If enabled, the text on the button will be centered|
  
### Methods  
|Method|Description|
|:-----|:----------|
|void SetText(string Text)|Sets the Button's text|
|string GetText()|Returns the Button's text|
|number GetId()|Returns the Button's Id|
|void Destroy()|Destroys the Button|

---

## Page.Toggle  
```js
<Toggle> Page.Toggle(<table> Options)
```
Creates a new `Toggle` with `Options`.  

### Example  
```lua
local Toggle = Page.Toggle({
    Text = "Toggle",
    Callback = function(value)
        print("Enabled:", value)
    end,
    Enabled = true
})
```

### Options  
|Name|Type|Default|Description|
|:---|:---|:------|:----------|
|Text|String|Toggle|The text shown on the Toggle|
|Callback|Function|nil|The Toggle's callback|
|Enabled|Boolean|false|Determines if the Toggle is enabled by default or not|
  
### Methods  
|Method|Description|
|:-----|:----------|
|void SetText(string Text)|Sets the Toggle's text|
|string GetText()|Returns the Toggle's text|
|number GetId()|Returns the Toggle's Id|
|void SetState(bool State)|Sets the Toggle's state|
|bool GetState()|Returns the Toggle's state|
|void Destroy()|Destroys the Toggle|

---

## Page.Dropdown  
```js
<Dropdown> Page.Dropdown(<table> Options)
```
Creates a new `Dropdown` with `Options`.  

### Example  
```lua
local Dropdown = Page.Dropdown({
    Text = "Dropdown",
    Callback = function(value)
        print("Selected:", value)
    end,
    Options = {"1", "2", "3"},
    Def = "2"
})
```

### Options  
|Name|Type|Default|Description|
|:---|:---|:------|:----------|
|Text|String|Dropdown|The text shown on the Dropdown|
|Callback|Function|nil|The Dropdown's callback|
|Options|Table|{"Option"}|The Dropdown's available options|
|Def|String|Option|The Dropdown's default option|
  
### Methods  
|Method|Description|
|:-----|:----------|
|void SetText(string Text)|Sets the Dropdown's text|
|string GetText()|Returns the Dropdown's text|
|number GetId()|Returns the Dropdown's Id|
|void SetOptions(table Options)|Sets the Dropdown's options|
|table GetOptions()|Returns the Dropdown's options|
|void Destroy()|Destroys the Dropdown|

---

## Page.TextBox  
```js
<TextBox> Page.TextBox(<table> Options)
```
Creates a new `TextBox` with `Options`.  
Aliases: `Page.TextField`  

### Example  
```lua
local TextBox = Page.TextBox({
    Text = "Text Box",
    Callback = function(value)
        print(value)
    end,
    Type = "Default",
    ClearOnFocus = false
})
```

### Options  
|Name|Type|Default|Description|
|:---|:---|:------|:----------|
|Text|String|Text Box|The text shown on the Text Box|
|Callback|Function|nil|The Text Box's callback|
|Type|String|Default|The Text Box's type.|
|ClearOnFocus|Boolean|false|Determines if the Text Box clears on focus|
|Center|Boolean|false|Determines if the Text Box's text is centered|
|Hidden|Boolean|false|Same behavior as setting `Type` to `Password`|
|Font|EnumItem|Enum.Font.Gotham|The font that is displayed on the TextBox|
|Size|Number|30|The height of the TextBox|

### Text Box Types
|Types|Description|
|:----|:----------|
|Default|The TextBox's contents will be visible|
|Password|The TextBox's contents will be hidden|

### Methods  
|Method|Description|
|:-----|:----------|
|void SetText(string Text)|Sets the Text Box's text|
|string GetText()|Returns the Text Box's text|
|number GetId()|Returns the Text Box's Id|
|void Destroy()|Destroys the Text Box|

---

## Page.Label  
```js
<Label> Page.Label(<table> Options)
```
Creates a new `Label` with `Options`.  

### Example  
```lua
local Bind = Instance.new("BindableEvent")
local Label = Page.Label({
    Text = "Label",
    Event = Bind, -- Use the INSTANCE, NOT the signal
    Center = true,
    Transparent = true
})

workspace.Part:GetPropertyChangedSignal("Position"):Connect(function()
    Bind:Fire(workspace.Part.Position) -- Easily update the Label's text with a connection!
    -- You can also use multiple arguments instead of concatenating like 'print' (ex: Event:Fire("Current Position:", workspace.Part.Position) )
end)
```

### Options  
|Name|Type|Default|Description|
|:---|:---|:------|:----------|
|Text|String|Label|The text shown on the Label|
|Event|BindableEvent|nil|The Label's text can be updated by firing this BindableEvent|
|Center|Boolean|false|Determines if the Label's text is centered|
|Transparent|Boolean|false|Determines if the Label's background is transparent|
|Font|EnumItem|Enum.Font.Gotham|The font shown on the Label|
|Size|Number|30|The height of the Label|
  
### Methods  
|Method|Description|
|:-----|:----------|
|void SetText(string Text)|Sets the Label's text|
|string GetText()|Returns the Label's text|
|number GetId()|Returns the Label's Id|
|void Destroy()|Destroys the Label|

---

## Page.Slider  
```js
<Slider> Page.Slider(<table> Options)
```
Creates a new `Slider` with `Options`.  

### Example  
```lua
local Slider = Page.Slider({
    Text = "Slider",
    Callback = function(value)
        print("Enabled:", value)
    end,
    Min = 0,
    Max = 123789,
    Def = 0
})
```

### Options  
|Name|Type|Default|Description|
|:---|:---|:------|:----------|
|Text|String|Slider|The text shown on the Slider|
|Callback|Function|nil|The Slider's callback|
|Min|Number|0|The Slider's minimum value|
|Max|Number|10|The Slider's maximum value|
|Def|Number|5|The Slider's default value|
|Prefix|String|nil|Displayed at the front of the value (ex: $5)|
|Suffix|String|nil|Displayed at the end of the value (ex: 5$)|
|ReturnWithAffixes|Boolean|false|Determines if the return values include the prefixes/suffixes|
|Decimals|Number|0|Determines how many decimal places the number has.<br />ex. 2 will return numbers like 1.23|
|Toggle|Boolean|false|If enabled, a Toggle will be shown on the Slider|
|Enabled|Boolean|false|Determines if the Toggle is enabled by default or not.<br />Toggle must be enabled for this to work|
|ToggleCallback|Function|nil|The Toggle's callback|
|Filled|Boolean|false|If enabled, the indicator will be hidden and the style of the Slider will be similar to the ProgressBar|
  
### Methods  
|Method|Description|
|:-----|:----------|
|void SetText(string Text)|Sets the Slider's text|
|string GetText()|Returns the Slider's text|
|number GetId()|Returns the Slider's Id|
|void SetMin(number Min)|Sets the Slider's minimum value|
|void SetMax(number Max)|Sets the Slider's maximum value|
|number GetMin()|Returns the Slider's minimum value|
|number GetMax()|Returns the Slider's maximum value|
|void Destroy()|Destroys the Slider|

---

## Page.ColorPicker  
```js
<ColorPicker> Page.ColorPicker(<table> Options)
<ColorPickerNew> Page.ColorPickerNew(<table> Options)
```
Creates a new `ColorPicker` or `ColorPickerNew` with `Options`.  
`ColorPickerNew` is the new color picker that has similar functionality to the one in Roblox Studio.  

### Example  
```lua
local ColorPicker = Page.ColorPicker({
    Text = "Color Picker",
    Callback = function(value)
        print(value)
    end,
    Def = Color3.fromRGB(0, 170, 255),
    Default = Color3.fromRGB(0, 170, 255), -- 'Default' is still available for compatibility.
    Rainbow = false,
})

local ColorPickerNew = Page.ColorPickerNew({
    Text = "New Color Picker",
    Callback = function(value)
        print(value)
    end,
    Def = Color3.fromRGB(0, 170, 255),
    Default = Color3.fromRGB(0, 170, 255), -- 'Default' is still available for compatibility.
    Rainbow = false
})
```

### Options  
|Name|Type|Default|Description|
|:---|:---|:------|:----------|
|Text|String|Color Picker|The text shown on the Color Picker|
|Callback|Function|nil|The ColorPicker's callback|
|Def|Color3|1, 1, 1|The ColorPicker's default color|
|Default|Color3|1, 1, 1|Same as `Def`|
|Rainbow|Boolean|false|Determines if `Rainbow` mode is enabled by default or not<br />This mode can cause lag since it calls `Callback` every frame|
  
### Methods  
|Method|Description|
|:-----|:----------|
|void SetText(string Text)|Sets the Color Picker's text|
|string GetText()|Returns the Color Picker's text|
|number GetId()|Returns the Color Picker's Id|
|void SetColor(Color3 Color)|Sets the Color Picker's color|
|Color3 GetColor()|Returns the Color Picker's color|
|void Destroy()|Destroys the Color Picker|

---

## Page.Keybind  
```js
<Toggle> Page.Keybind(<table> Options)
```
Creates a new `Keybind` with `Options`.  

### Example  
```lua
local Keybind = Page.Keybind({
    Text = "Keybind",
    Callback = function(value)
        print("Keybind:", value.Name)
    end,
    Def = Enum.KeyCode.RightShift,
    AllowKeyboard = true,
    AllowMouse = true
})
```

### Options  
|Name|Type|Default|Description|
|:---|:---|:------|:----------|
|Text|String|Keybind|The text shown on the Keybind|
|Callback|Function|nil|The Keybind's callback|
|Def|EnumItem|Unknown|The Keybind's default value|
|AllowKeyboard|Boolean|true|Determines if Keyboard inputs can be used|
|AllowMouse|Boolean|false|Determines if Mouse inputs can be used|

### Methods  
|Method|Description|
|:-----|:----------|
|void SetText(string Text)|Sets the Keybind's text|
|string GetText()|Returns the Keybind's text|
|number GetId()|Returns the Keybind's Id|
|void SetBind(EnumItem Bind)|Sets the Keybind's bind|
|EnumItem GetBind()|Returns the Keybind's bind|
|void Destroy()|Destroys the Keybind|

---

## Page.ChipSet  
```js
<ChipSet> Page.ChipSet(<table> Options)
```
Creates a new `ChipSet` with `Options`.  
Aliases: `Page.DataTable`  

### Example  
```lua
local ChipSet = Page.ChipSet({
    Text = "Chip Set",
    Callback = function(value)
        table.foreach(value, print)
    end,
    Options = {
        ['Option 1'] = true,
        ['Option 2'] = false
    }
})
```

### Options  
|Name|Type|Default|Description|
|:---|:---|:------|:----------|
|Text|String|Chip Set|The text shown on the Chip Set|
|Callback|Function|nil|The Chip Set's callback|
|Options|Table|Option 1 = true,<br />Option 2 = false|The Chip Set's available options|

### Methods  
|Method|Description|
|:-----|:----------|
|void SetText(string Text)|Sets the Chip Set's text|
|string GetText()|Returns the Chip Set's text|
|number GetId()|Returns the Chip Set's Id|
|void SetOptions(table Options)|Sets the Chip Set's options|
|table GetOptions()|Returns the Chip Set's options|
|void Destroy()|Destroys the Chip Set|

---

## Page.Table  
```js
<Table> Page.Table(<table> Options)
```
Creates a new `Table` with `Options`.  

### Example  
```lua
local Table = Page.Table({
    Text = "Table",
    Event = Bind,
    Key = "Name",
    Value = "Type",
    ShowInfo = true,
    Data = {
        Text = "String",
        Event = "BindableEvent",
        Key = "Key",
        Value = "Value",
        ShowInfo = "true",
        Data = "table of data"
    }
})
```

### Options  
|Name|Type|Default|Description|
|:---|:---|:------|:----------|
|Text|String|Table|The text shown on the Table|
|Event|BindableEvent|nil|The Table's contents can be updated by firing this BindableEvent|
|Key|String|Key|The Key name|
|Value|String|Value|The Value name|
|ShowInfo|Boolean|true|Determines if Key and Value are shown|
|Data|Table|{Key = "Value"}|The data shown in the Table|

### Methods  
|Method|Description|
|:-----|:----------|
|void SetText(string Text)|Sets the Table's text|
|string GetText()|Returns the Table's text|
|number GetId()|Returns the Table's Id|
|void SetData(table Bind)|Sets the Table's data|
|table GetData()|Returns the Table's data|
|void Destroy()|Destroys the Table|

---

## Page.ProgressBar  
```js
<Slider> Page.ProgressBar(<table> Options)
```
Creates a new `ProgressBar` with `Options`.  

### Example  
```lua
local Slider = Page.ProgressBar({
    Text = "Progress Bar",
    Event = bind, -- use the INSTANCE, NOT the signal
    Min = 0,
    Max = 100,
    Def = 0
})
```

### Options  
|Name|Type|Default|Description|
|:---|:---|:------|:----------|
|Text|String|Progress Bar|The text shown on the Progress Bar|
|Callback|Function|nil|The Progress Bar's callback|
|Min|Number|0|The Progress Bar's minimum value|
|Max|Number|10|The Progress Bar's maximum value|
|Def|Number|5|The Progress Bar's default value|
|Prefix|String|nil|Displayed at the front of the value (ex: $5)|
|Suffix|String|nil|Displayed at the end of the value (ex: 5$)|
|Percent|Boolean|true|Determines if the progress bar displays a percentage|
  
### Methods  
|Method|Description|
|:-----|:----------|
|void SetText(string Text)|Sets the Progress Bar's text|
|string GetText()|Returns the Progress Bar's text|
|number GetId()|Returns the Progress Bar's Id|
|void SetMin(number Min)|Sets the Progress Bar's minimum value|
|void SetMax(number Max)|Sets the Progress Bar's maximum value|
|number GetMin()|Returns the Progress Bar's minimum value|
|number GetMax()|Returns the Progress Bar's maximum value|
|void Destroy()|Destroys the Progress Bar|

---

# Themes and Customization

|Override|Element|Description|
|:-------|:------|:----------|
|MainFrame|Main|The base/background of the UI|
|Minimise|Topbar|This is the color of the min/max button when the UI is closed|
|Maximise|Topbar|This is the color of the min/max button when the UI is opened|
|NavBar|Navigator|The base/background of the Navigator|
|NavBarAccent|Navigator|This is the color of the tabs (styles 1 and 2). If you use style 2, the color will be slightly lighter.<br />This color is also used for the dividers between each page button and the line on the edge of the Navigator (styles 3 and 4)|
|NavBarDim|Navigator|This is the color of the background dim. The color will be very light due to the transparency, so be sure to choose a decently vibrant color|
|NavBarText|Navigator|The color of the text on the page buttons in the Navigator|
|TitleBar|Topbar|The color of the very top of the UI where the Title is displayed|
|TitleBarText|Topbar|The color of the Title text|
|Overlay|Main|This is the overlay that you see when the UI is loading|
|Focus|Text Boxes|This is the line that appears when you focus on a text box|
|Banner|Banner|The base/background of the Banner|
|BannerAccent|Banner|The outline of the Banner. This color will be slightly lighter|
|BannerAccent2|Banner|The color of the buttons|
|BannerDim|Banner|This This is the color of the background dim. The color will be very light due to the transparency, so be sure to choose a decently vibrant color|
|BannerText|Banner|The color of the text in the Banner|
|Notify|Notification|The base/background of the Notification|
|NotifyAccent|Notification|The color of the buttons|
|NotifyAccent2|Notification|The color of the duration indicator between the Title and Text|
|NotifyText|Notification|The color of the text|
|Button|Button|The base color of the Button|
|ButtonText|Button|The color of the text on the Button|
|ButtonMenu|Button|The color of the menu button on the Button|
|Toggle|Toggle|The base color of the Toggle|
|ToggleAccent|Toggle|The color of the indicator (smaller square that moves). This color will be a tiny bit lighter when the toggle is disabled|
|ToggleAccent2|Toggle|The color of the base of the indicator (larger rectangle that 'holds' the square)|
|ToggleText|Toggle|The color of the text on the Toggle|
|ToggleMenu|Toggle|The color of the menu button on the Toggle|
|Dropdown|Dropdown|The base color of the Dropdown|
|DropdownAccent|Dropdown|The color of the Options|
|DropdownBackdrop|Dropdown|The base color of the Dropdown when expanded (behind the Options)|
|DropdownText|Dropdown|The color of the text on the Dropdown|
|DropdownMenu|Dropdown|The color of the menu button on the Dropdown|
|TextBox|TextBox|The base color of the TextBox|
|TextBoxAccent|TextBox|The color of the Cursor|
|TextBoxText|TextBox|The color of the text on the TextBox|
|TextBoxText2|TextBox|The color of the placeholder text on the TextBox|
|TextBoxMenu|TextBox|The color of the menu button on the TextBox|
|Label|Label|The base color of the Label|
|LabelText|Label|The color of the text on the Label|
|LabelMenu|Label|The color of the menu button on the Label|
|Slider|Slider|The base color of the Slider|
|SliderAccent|Slider|The color of the slider indicator|
|SliderAccent2|Slider|The color of the slider bar and the value text box|
|SliderAccent3|Slider|The color of the toggle indicator (smaller square that moves). This color will be a tiny bit lighter when the toggle is disabled|
|SliderAccent4|Slider|The color of the base of the toggle indicator (larger rectangle that 'holds' the square)|
|SliderText|Slider|The color of the text on the Slider|
|SliderText2|Slider|The color of the text in the value text box|
|SliderText3|Slider|The color of the placeholder text in the value text box|
|SliderMenu|Slider|The color of the menu button on the Slider|
|ColorPicker|ColorPicker|The base color of the ColorPicker|
|ColorPickerAccent|ColorPicker|The color of the HEX, RGB, and Rainbow text boxes (NEW COLOR PICKER)|
|ColorPickerAccent2|ColorPicker|The color of the H, S, and V labels (OLD COLOR PICKER)|
|ColorPickerAccent3|ColorPicker|The color of the value/brightness indicator (arrow) (NEW COLOR PICKER)|
|ColorPickerBackdrop|ColorPicker|The base of the ColorPicker when expanded|
|ColorPickerText|ColorPicker|The color of the text on the ColorPicker|
|ColorPickerText2|ColorPicker|The color of the placeholder text in the HEX and RGB text boxes|
|ColorPickerMenu|ColorPicker|The color of the menu button on the ColorPicker|
|Keybind|Keybind|The base color of the Keybind|
|KeybindAccent|Keybind|The color of the Bind (darker part)|
|KeybindAccent2|Keybind|The color of the Bind (lighter part)|
|KeybindText|Keybind|The color of the text on the Keybind|
|KeybindText2|Keybind|The color of the text on the Bind|
|KeybindMenu|Keybind|The color of the menu button on the Keybind|
|ChipSet|ChipSet|The base color of the ChipSet|
|ChipSetAccent|ChipSet|The color of the Options|
|ChipSetBackdrop|ChipSet|The base color of the ChipSet when expanded (behind the Options)|
|ChipSetCheck|ChipSet|The color of the check boxes|
|ChipSetText|ChipSet|The color of the text on the ChipSet|
|ChipSetMenu|ChipSet|The color of the menu button on the ChipSet|
|Table|Table|The base color of the Table|
|TableAccent|Table|The color of the Data|
|TableAccent2|Table|The color of the dividers (line) between the Key and Value. This color will be slightly lighter.|
|TableBackdrop|Table|The base color of the Table when expanded (behind the Data)|
|TableCheck|Table|The color of the check boxes|
|TableText|Table|The color of the text on the Table|
|TableMenu|Table|The color of the menu button on the Table|
|ProgressBar|ProgressBar|The base color of the ProgressBar|
|ProgressBarAccent|ProgressBar|The color of the progress indicator|
|ProgressBarAccent2|ProgressBar|The color of the bar|
|ProgressBarText|ProgressBar|The color of the text on the ProgressBar|
|ProgressBarMenu|ProgressBar|The color of the menu button on the ProgressBar|

### Example: Changing the color of Sliders
```lua
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/zzerexx/scripts/main/MaterialLuaRemake.lua"), "MaterialLuaRemake.lua")()
local UI = Material.Load({
    Title = "Example Script",
    SubTitle = "Slider Overrides",
    SizeX = 400,
    SizeY = 105,
    Theme = "Dark",
    ThemeOverrides = {
        Slider = Color3.fromRGB(176, 148, 125),
        SliderAccent = Color3.fromRGB(222, 210, 200),
        SliderAccent2 = Color3.fromRGB(189, 183, 177),
        SliderAccent3 = Color3.fromRGB(222, 210, 200),
        SliderAccent4 = Color3.fromRGB(189, 183, 177),
        SliderText = Color3.fromRGB(230, 230, 230),
        SliderText2 = Color3.fromRGB(176, 148, 125),
        SliderText3 = Color3.fromRGB(176, 148, 125),
        SliderMenu = Color3.fromRGB(230, 230, 230),
    }
})
local Page = UI.new("Page")
local GeneratorEnabled = false
local Robux = 0
Page.Slider({
    Text = "robux generator",
    Callback = function(value)
        Robux = value
    end,
    Min = 0,
    Max = 999999,
    Def = Robux,
    Prefix = "$",
    Toggle = true,
    Enabled = GeneratorEnabled,
    ToggleCallback = function(value)
        GeneratorEnabled = value
    end,
    Filled = true
})
Page.Button({
    Text = "generate robux !!!",
    Callback = function()
        if GeneratorEnabled then
            UI.Notify({
                Title = "robux generator",
                Text = "successfully added "..Robux.." robux to your account!",
                Duration = 5,
                Options = {"woohoo"}
            })
        else
            UI.Notify({
                Title = "robux generator",
                Text = "generator not enabled"
            })
        end
    end
})
```
![Slider Overrides](https://i.imgur.com/JcRGqsX.png)
