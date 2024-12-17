function onUse(cid, item, frompos, item2, topos)

mwallpos = {x=418, y=80, z=14, stackpos=1} -- pozycja pierwszej sciany
mwall1pos = {x=418, y=82, z=14, stackpos=1} -- pozycja drugiej sciany
getpiece1 = getThingfromPos(mwall1pos)
if item.uid == 7052 and item.itemid == 1945 and getpiece1.itemid == 1497 then
doRemoveItem(getpiece1.uid,1)
potwor1pos = {x=416, y=45, z=13} -- pozycja pierwszego potworka
potwor2pos = {x=416, y=46, z=13} -- pozycja drugiego potworka
potwor3pos = {x=416, y=47, z=13} -- pozycja trzeciego potworka
potwor4pos = {x=417, y=46, z=13} -- pozycja czwartego potworka
doSummonCreature("Bardock", potwor1pos) -- nazwa pierwszego potworka
doSummonCreature("Bardock", potwor2pos) -- nazwa drugiego potworka
doSummonCreature("Bardock", potwor3pos) -- nazwa trzeciego potworka
doSummonCreature("Bardock", potwor4pos) -- nazwa czwartego potworka
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 7052 and item.itemid == 1946 then
doCreateItem(1497,1,mwallpos)
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendTextMessage(cid,22,"Sorry, not possible.")
end
return 1
end