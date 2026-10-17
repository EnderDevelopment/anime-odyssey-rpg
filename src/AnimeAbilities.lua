-- Anime Abilities System for Roblox RPG Game

local module = {}

-- Function to add an anime ability
function module.addAbility(character, abilityName, abilityData)
    -- Ability addition logic
    local ability = Instance.new("Folder")
    ability.Name = abilityName
    ability.Parent = character

    -- Set ability attributes
    for attribute, value in pairs(abilityData) do
        local attr = Instance.new("StringValue")
        attr.Name = attribute
        attr.Value = value
        attr.Parent = ability
    end
end

return module