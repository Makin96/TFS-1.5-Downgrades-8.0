function onUse(cid, item, frompos, item2, topos)
if item.itemid == 2265 then
doPlayerAddSkillTry(cid,2,10000)
if item.type > 1 then
doChangeTypeItem(item.uid,item.type-1)
else
doRemoveItem(item.uid,1)
end
doSendMagicEffect(topos,12)
doPlayerSay(cid,"Sword Up",1)
else
doRemoveItem(item.uid,1)
end
end