function onStepIn(cid, item, pos)

    if isPlayer(cid) == 1 then
    local NewOutfit = {lookType=17,lookHead=81,lookAddons=0,lookLegs=88,lookBody=86,lookFeet=88}
    OutfitTime = 10 * 864000000
    doSetCreatureOutfit(cid, NewOutfit, OutfitTime)

    end
    return 1
    end