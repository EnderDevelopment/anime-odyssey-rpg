-- Martial Arts System for Roblox RPG Game

local module = {}

-- Function to add a martial art
function module.addMartialArt(character, martialArtName, martialArtData)
    -- Martial art addition logic
    local martialArt = Instance.new("Folder")
    martialArt.Name = martialArtName
    martialArt.Parent = character

    -- Set martial art attributes
    for attribute, value in pairs(martialArtData) do
        local attr = Instance.new("StringValue")
        attr.Name = attribute
        attr.Value = value
        attr.Parent = martialArt
    end
end

return module