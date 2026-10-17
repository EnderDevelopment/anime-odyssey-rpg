-- Guilds System for Roblox RPG Game

local module = {}

-- Function to create a guild
function module.createGuild(guildName, guildData)
    -- Guild creation logic
    local guild = Instance.new("Folder")
    guild.Name = guildName
    guild.Parent = game:GetService("Workspace")

    -- Set guild attributes
    for attribute, value in pairs(guildData) do
        local attr = Instance.new("StringValue")
        attr.Name = attribute
        attr.Value = value
        attr.Parent = guild
    end
end

return module