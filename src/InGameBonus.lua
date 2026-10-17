-- In-Game Bonus System for Roblox RPG Game

local module = {}

-- Function to apply in-game bonus
function module.applyInGameBonus(player, bonusType, bonusValue)
    -- In-game bonus application logic
    if bonusType == "Experience" then
        local experience = player:FindFirstChild("Experience")
        if experience then
            experience.Value = experience.Value + bonusValue
        else
            local newExperience = Instance.new("IntValue")
            newExperience.Name = "Experience"
            newExperience.Value = bonusValue
            newExperience.Parent = player
        end
    elseif bonusType == "Currency" then
        local currency = player:FindFirstChild("Currency")
        if currency then
            currency.Value = currency.Value + bonusValue
        else
            local newCurrency = Instance.new("IntValue")
            newCurrency.Name = "Currency"
            newCurrency.Value = bonusValue
            newCurrency.Parent = player
        end
    end
end

return module