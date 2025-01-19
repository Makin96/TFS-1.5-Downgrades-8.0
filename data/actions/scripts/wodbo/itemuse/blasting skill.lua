function onUse(cid, item, fromPosition, itemEx, toPosition)
    -- Usuń przedmiot
    if doRemoveItem(item.uid, 1) then
        -- Wyświetl efekt wizualny
        doSendMagicEffect(getThingPos(cid), 14)

        -- Dodaj wartość do magazynu (storage) zamiast bezpośredniego skilla
        local skillStorage = 5001 -- Unikalny ID storage dla umiejętności dystansowej
        local currentSkill = getPlayerStorageValue(cid, skillStorage)

        -- Upewnij się, że currentSkill ma poprawną wartość
        if currentSkill == -1 then
            currentSkill = 0 -- Ustaw wartość początkową, jeśli storage nie istnieje
        end

        local newSkill = currentSkill + 10000
        setPlayerStorageValue(cid, skillStorage, newSkill)

        -- Powiadom gracza o nowym poziomie
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Twoja umiejętność dystansowa została zwiększona! Nowa wartość: " .. tostring(newSkill))

        -- Wyświetl wiadomość nad graczem
        doCreatureSay(cid, "Blasting Up!", TALKTYPE_ORANGE_1)
    else
        -- Nie udało się usunąć przedmiotu (np. nie znaleziono go)
        doPlayerSendTextMessage(cid, MESSAGE_STATUS_CONSOLE_BLUE, "Nie udało się użyć przedmiotu.")
    end

    return true
end
print("Obecna wartość storage: " .. tostring(currentSkill))
print("Nowa wartość storage: " .. tostring(newSkill))