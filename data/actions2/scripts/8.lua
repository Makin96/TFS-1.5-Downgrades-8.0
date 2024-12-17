function onUse(cid, item, frompos, item2, topos)

mwallpos = {x=607, y=144, z=8, stackpos=1} -- pozycja pierwszej sciany
mwall1pos = {x=607, y=145, z=8, stackpos=1} -- pozycja drugiej sciany
getpiece1 = getThingfromPos(mwall1pos)
if item.uid == 7068 and item.itemid == 1945 and getpiece1.itemid == 1497 then
doRemoveItem(getpiece1.uid,1)
potwor1pos = {x=184, y=82, z=8} -- pozycja pierwszego potworka
potwor2pos = {x=187, y=82, z=8} -- pozycja drugiego potworka
potwor3pos = {x=184, y=86, z=8} -- pozycja trzeciego potworka
potwor4pos = {x=187, y=86, z=8} -- pozycja czwartego potworka
doSummonCreature("Bardock", potwor1pos) -- nazwa pierwszego potworka
doSummonCreature("Freza Form One", potwor2pos) -- nazwa drugiego potworka
doSummonCreature("Cell First Form", potwor3pos) -- nazwa trzeciego potworka
doSummonCreature("Fat Buu", potwor4pos) -- nazwa czwartego potworka
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 7068 and item.itemid == 1946 then
doCreateItem(1497,1,mwallpos)
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendTextMessage(cid,22,"Sorry, not possible.")
end
return 1
end