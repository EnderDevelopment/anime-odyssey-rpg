-- Status System for Roblox RPG Game

local module = {}

-- Function to update status manually
function module.updateStatusManually(character, statusName, value)
    -- Manual status update logic
    local status = character:FindFirstChild(statusName)
    if status then
        status.Value = value
    else
        local newStatus = Instance.new("IntValue")
        newStatus.Name = statusName
        newStatus.Value = value
        newStatus.Parent = character
    end
end

-- Function to update status automatically
function module.updateStatusAutomatically(character, statusName, baseValue, level)
    -- Automatic status update logic
    local status = character:FindFirstChild(statusName)
    if status then
        status.Value = baseValue + (level * 2)
    else
        local newStatus = Instance.new("IntValue")
        newStatus.Name = statusName
        newStatus.Value = baseValue + (level * 2)
        newStatus.Parent = character
    end
end

return module