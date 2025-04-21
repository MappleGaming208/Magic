-- config.luau
return function(Library)
    local GUI = Library:Create({
        Name = "Mercury",
        Size = UDim2.fromOffset(600, 400),
        Theme = Library.Themes.Dark,
        Link = "https://github.com/..."
    })
end
