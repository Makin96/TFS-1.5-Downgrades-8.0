function onUse(cid, item, fromPosition, itemEx, toPosition)

    if getPlayerStorageValue(cid, 11111) == 1 then
        local skill, amount = SKILL_SWORD, 3

        for i = 1, amount do
                  doPlayerAddSkillTry(cid, skill, (getPlayerRequiredSkillTries(cid, skill, getPlayerSkillLevel(cid, skill) + 1) - getPlayerSkillTries(cid, skill)), true)
        end
    else
        doPlayerSendCancel(cid,"You already used this item")
    end
    return TRUE
end