function onUse(cid, item, frompos, item2, topos)
    local level = getPlayerLevel(cid)
    local mlevel = getPlayerMagLevel(cid)

    local exhausted_seconds = 1
    local exhausted_storagevalue = 7480

    local mana_minimum = 50000
    local mana_maximum = 50000

    local mana_add = math.random(mana_minimum, mana_maximum)

    if os.time() > getPlayerStorageValue(cid, exhausted_storagevalue) then
        if isPlayer(cid) then
            doSendMagicEffect(getThingPos(cid), CONST_ME_MAGIC_BLUE)
            doPlayerAddMana(cid, mana_add)
            doCreatureAddHealth(cid, mana_add * (item.type > 0 and 1 or 1.5)) -- Użycie doCreatureAddHealth
            doCreatureSay(cid, "I feel the best", TALKTYPE_ORANGE_1)
            setPlayerStorageValue(cid, exhausted_storagevalue, os.time() + exhausted_seconds)

            if item.type > 0 then
                doChangeTypeItem(item.uid, item.type - 1)
            else
                doRemoveItem(item.uid, 1)
            end
        else

            doSendMagicEffect(getThingPos(cid), CONST_ME_POFF)
            doPlayerSendCancel(cid, "You are not a player.")
        end
    else
        doSendMagicEffect(getThingPos(cid), CONST_ME_POFF)
        doPlayerSendCancel(cid, "You are exhausted.")
    end

    return true
end
