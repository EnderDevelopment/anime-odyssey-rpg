-- Roulette System for Roblox RPG Game

local module = {}

-- Function to spin the roulette
function module.spinRoulette(player)
    -- Roulette spin logic
    local randomValue = math.random(1, 100)
    local reward

    if randomValue <= 5 then
        reward = "Legendary Item"
    elseif randomValue <= 20 then
        reward = "Epic Item"
    elseif randomValue <= 50 then
        reward = "Rare Item"
    else
        reward = "Common Item"
    end

    -- Give reward to player
    print(player.Name .. " spun the roulette and got: " .. reward)
end

return module