-- Inventory System for Roblox RPG Game

local module = {}

-- Function to add item to inventory
function module.addItem(player, itemName, itemData)
    -- Item addition logic
    local inventory = player:FindFirstChild("Inventory")
    if not inventory then
        inventory = Instance.new("Folder")
        inventory.Name = "Inventory"
        inventory.Parent = player
    end

    local item = Instance.new("Folder")
    item.Name = itemName
    item.Parent = inventory

    -- Set item attributes
    for attribute, value in pairs(itemData) do
        local attr = Instance.new("StringValue")
        attr.Name = attribute
        attr.Value = value
        attr.Parent = item
    end
end

return module