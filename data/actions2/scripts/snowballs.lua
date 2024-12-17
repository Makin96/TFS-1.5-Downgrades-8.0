-- Snowballs by Killavus
function onUse(cid, item, topos)
if item.itemid == 670 then
rand = math.random(1,15)
doSendMagicEffect(topos,2)
end
if rand == 1 then
rand2 = math.random(1,3)
doPlayerAddItem(cid,2111,rand2)

elseif rand == 2 then
doPlayerAddHealth(cid,-20)
doPlayerSay(cid,"Ouch! I hurt my finger! ^$%^$^#$!!!",1)

elseif rand == 5 then
doPlayerAddHealth(cid,5)
doPlayerAddMana(cid,5)
doPlayerSay(cid,"LOL! I found snowcone in snow!!!",1)
end
return 1
end
