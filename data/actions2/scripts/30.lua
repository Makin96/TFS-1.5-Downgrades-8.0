function onUse(cid, item, frompos, item2, topos)

mwallpos = {x=393, y=953, z=7, stackpos=1} -- pozycja pierwszej sciany
mwall1pos = {x=393, y=954, z=7, stackpos=1} -- pozycja drugiej sciany
getpiece1 = getThingfromPos(mwall1pos)
if item.uid == 7053 and item.itemid == 1945 and getpiece1.itemid == 1497 then
doRemoveItem(getpiece1.uid,1)
potwor1pos = {x=187, y=826, z=2} -- pozycja pierwszego potworka
potwor2pos = {x=187, y=827, z=2} -- pozycja drugiego potworka
potwor3pos = {x=187, y=828, z=2} -- pozycja trzeciego potworka
potwor4pos = {x=187, y=829, z=2} -- pozycja czwartego potworka
doSummonCreature("Kid Janemba", potwor1pos) -- nazwa pierwszego potworka
doSummonCreature("Kid Janemba", potwor2pos) -- nazwa drugiego potworka
doSummonCreature("Kid Janemba", potwor3pos) -- nazwa trzeciego potworka
doSummonCreature("Kid Janemba", potwor4pos) -- nazwa czwartego potworka
doTransformItem(item.uid,item.itemid+1)
elseif item.uid == 7053 and item.itemid == 1946 then
doCreateItem(1497,1,mwallpos)
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendTextMessage(cid,22,"Sorry, not possible.")
end
return 1
end