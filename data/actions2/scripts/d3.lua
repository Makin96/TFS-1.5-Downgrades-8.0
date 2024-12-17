function onUse(cid, item, frompos, item2, topos)

mwallpos = {x=160, y=91, z=8, stackpos=1} -- pozycja pierwszej sciany
mwall1pos = {x=220, y=309, z=6, stackpos=1} -- pozycja drugiej sciany
getpiece1 = getThingfromPos(mwall1pos)
if item.uid == 7022 and item.itemid == 1945 and getpiece1.itemid == 1497 then
doRemoveItem(getpiece1.uid,1)
potwor1pos = {x=131, y=92, z=8} -- pozycja pierwszego potworka
potwor2pos = {x=131, y=98, z=8} -- pozycja drugiego potworka
potwor3pos = {x=136, y=92, z=8} -- pozycja trzeciego potworka
potwor4pos = {x=136, y=98, z=8} -- pozycja czwartego potworka
doSummonCreature("mn", potwor1pos) -- nazwa pierwszego potworka
doSummonCreature("mn", potwor2pos) -- nazwa drugiego potworka
doSummonCreature("mn", potwor3pos) -- nazwa trzeciego potworka
doSummonCreature("mn", potwor4pos) -- nazwa czwartego potworka
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 7022 and item.itemid == 1946 then
doCreateItem(1497,1,mwallpos)
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendTextMessage(cid,22,"Sorry, not possible.")
end
return 1
end