function onUse(cid, item, frompos, item2, topos)

mwallpos = {x=327,y=902,z=7,stackpos=1} -- pozycja pierwszej sciany
mwall1pos = {x=328,y=902,z=7,stackpos=1} -- pozycja drugiej sciany
mwall2pos = {x=329,y=904,z=7,stackpos=1} -- pozycja drugiej sciany
getpiece1 = getThingfromPos(mwallpos)
getpiece2 = getThingfromPos(mwall1pos)
getpiece3 = getThingfromPos(mwall2pos)
if item.uid == 7054 and item.itemid == 1945 and getpiece1.itemid == 2090 and getpiece2.itemid == 2086 then
doRemoveItem(getpiece1.uid,1)
doRemoveItem(getpiece2.uid,1)
doTransformItem(item.uid,item.itemid+1)
doCreateItem(2087,1,mwall2pos)

elseif item.uid == 7054 and item.itemid == 1946 then
doTransformItem(item.uid,item.itemid-1)
else
doPlayerSendTextMessage(cid,22,"You need right and left keys to transform key.")
end
return 1
end