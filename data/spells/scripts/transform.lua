function onCastSpell(cid, var)
    local player = Player(cid)
    if not player then
        return false
    end

    -- GOKU Transformacja
    if getPlayerVocation(cid) == 1 and getPlayerLevel(cid) >= 50 then
        if getPlayerStorageValue(cid, 61260) > os.time() == false then
            doPlayerSetVocation(cid, 16)
            doCreatureChangeOutfit(cid, {lookType=37})
            doSendMagicEffect(getCreaturePosition(cid), 57)
            setPlayerStorageValue(cid, 61260, os.time() + 2)
            return true
        else
            doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "You are exhausted!")
            return false
        end
    elseif getPlayerVocation(cid) == 16 and getPlayerLevel(cid) >= 75 then
        if getPlayerStorageValue(cid, 61260) > os.time() == false then
            doPlayerSetVocation(cid, 17)
            doCreatureChangeOutfit(cid, {lookType=18})
            doSendMagicEffect(getCreaturePosition(cid), 58)
            setPlayerStorageValue(cid, 61260, os.time() + 2)
            return true
        else
            doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "You are exhausted!")
            return false
        end
	elseif getPlayerVocation(cid) == 17 and getPlayerLevel(cid) >= 100 then
        if getPlayerStorageValue(cid, 61260) > os.time() == false then
            doPlayerSetVocation(cid, 18)
            doCreatureChangeOutfit(cid, {lookType=71})
            doSendMagicEffect(getCreaturePosition(cid), 59)
            setPlayerStorageValue(cid, 61260, os.time() + 2)
            return true
        else
            doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "You are exhausted!")
            return false
        end
	elseif getPlayerVocation(cid) == 18 and getPlayerLevel(cid) >= 150 then
        if getPlayerStorageValue(cid, 61260) > os.time() == false then
            doPlayerSetVocation(cid, 19)
            doCreatureChangeOutfit(cid, {lookType=70})
            doSendMagicEffect(getCreaturePosition(cid), 60)
            setPlayerStorageValue(cid, 61260, os.time() + 2)
            return true
        else
            doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "You are exhausted!")
            return false
        end
    elseif getPlayerVocation(cid) == 19 and getPlayerLevel(cid) >= 200 then
        if getPlayerStorageValue(cid, 61260) > os.time() == false then
            doPlayerSetVocation(cid, 20)
            doCreatureChangeOutfit(cid, {lookType=70})
            doSendMagicEffect(getCreaturePosition(cid), 60)
            doCreatureAddHealth(cid, 20000)
            doPlayerAddMana(cid, 20000)
            setPlayerStorageValue(cid, 61260, os.time() + 2)
            return true
        else
            doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "You are exhausted!")
            return false
        end
    else
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_WARNING, "You cannot transform!")
        doSendMagicEffect(getCreaturePosition(cid), CONST_ME_POFF)
        return false
    end
end
