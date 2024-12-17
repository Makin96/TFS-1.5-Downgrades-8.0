function onUse(cid, item, frompos, item2, topos)
 
--parchment--
if item2.actionid == 1150 then
doTransformItem(item2.uid,383)
doDecayItem(item2.uid)
else
return 0
end
if item2.itemid == 351 then
rand = math.random(1,1000)
if rand == 50 then
doPlayerAddItem(cid,2149,1)
doSendMagicEffect(topos,2)
if rand == 100 then
doPlayerAddItem(cid,2146,1)
doSendMagicEffect(topos,2)
end
end
return 1
end