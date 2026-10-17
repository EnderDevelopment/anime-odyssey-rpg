-- Character Creation System for Roblox RPG Game

local module = {}

-- Function to create a new character
function module.createCharacter(player, characterData)
    -- Character creation logic
    local character = Instance.new("Model")
    character.Name = characterData.name
    character.Parent = player

    -- Set character attributes
    for attribute, value in pairs(characterData.attributes) do
        local attr = Instance.new("IntValue")
        attr.Name = attribute
        attr.Value = value
        attr.Parent = character
    end

    return character
end

return module