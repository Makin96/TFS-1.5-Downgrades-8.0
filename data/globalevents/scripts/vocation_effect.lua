function onThink(interval)
    for _, player in ipairs(Game.getPlayers()) do
        if player:getVocation():getId() == 20 then
            local pos = player:getPosition()
            pos:sendMagicEffect(14) -- Efekt dla voc 20
        end
    end
    return true
end
