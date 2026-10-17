-- Level System for Roblox RPG Game

local module = {}

-- Function to increase level
function module.increaseLevel(character, amount)
    -- Level increase logic
    local level = character:FindFirstChild("Level")
    if level then
        level.Value = level.Value + amount
    else
        local newLevel = Instance.new("IntValue")
        newLevel.Name = "Level"
        newLevel.Value = amount
        newLevel.Parent = character
    end
end

return module