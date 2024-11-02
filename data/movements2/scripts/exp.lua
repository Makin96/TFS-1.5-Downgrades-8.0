function onStepIn(cid, item, pos)

if isPlayer(cid) == 1 then
doPlayerAddMana(cid,-100)
doPlayerAddHealth(cid,-100)
doPlayerAddSoul(cid,1)
doPlayerAddExp(cid, 10)
doPlayerAddSkillTry(cid,0,10)
 end
    return 1
    end