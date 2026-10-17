-- Animations System for Roblox RPG Game

local module = {}

-- Function to play an animation
function module.playAnimation(character, animationId)
    -- Animation playing logic
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        local animation = Instance.new("Animation")
        animation.AnimationId = "rbxassetid://" .. animationId
        local animationTrack = humanoid:LoadAnimation(animation)
        animationTrack:Play()
    end
end

return module