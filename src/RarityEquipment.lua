-- Rarity Equipment System for Roblox RPG Game

local module = {}

-- Function to add rarity equipment
function module.addRarityEquipment(character, equipmentName, rarity)
    -- Rarity equipment addition logic
    local equipment = Instance.new("Folder")
    equipment.Name = equipmentName
    equipment.Parent = character

    -- Set rarity attribute
    local rarityAttr = Instance.new("StringValue")
    rarityAttr.Name = "Rarity"
    rarityAttr.Value = rarity
    rarityAttr.Parent = equipment
end

return module