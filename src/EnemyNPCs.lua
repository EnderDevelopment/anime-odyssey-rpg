-- Enemy NPCs System for Roblox RPG Game

local module = {}

-- Function to create an enemy NPC
function module.createEnemyNPC(npcName, npcData)
    -- Enemy NPC creation logic
    local npc = Instance.new("Model")
    npc.Name = npcName
    npc.Parent = game:GetService("Workspace")

    -- Set NPC attributes
    for attribute, value in pairs(npcData) do
        local attr = Instance.new("StringValue")
        attr.Name = attribute
        attr.Value = value
        attr.Parent = npc
    end
end

return module