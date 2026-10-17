-- Fighting Styles System for Roblox RPG Game

local module = {}

-- Function to add a fighting style
function module.addFightingStyle(character, styleName, styleData)
    -- Fighting style addition logic
    local style = Instance.new("Folder")
    style.Name = styleName
    style.Parent = character

    -- Set fighting style attributes
    for attribute, value in pairs(styleData) do
        local attr = Instance.new("StringValue")
        attr.Name = attribute
        attr.Value = value
        attr.Parent = style
    end
end

return module