function onUse(cid, item, frompos, item2, topos)
wall1 = {x=422, y=88, z=7, stackpos=1}
wall2 = {x=422, y=89, z=7, stackpos=1}
getwall1 = getThingfromPos(wall1)
getwall2 = getThingfromPos(wall2)

if item.uid == 1213 and item.itemid == 1945 then
 doRemoveItem(getwall1.uid,1)
 doRemoveItem(getwall2.uid,1)
 doTransformItem(item.uid,item.itemid+1)
 elseif item.uid == 1213 and item.itemid == 1946 then
  doTransformItem(item.uid,item.itemid-1)
 doCreateItem(1049,1,wall1)
 doCreateItem(1049,1,wall2)
 else
doPlayerSendCancel(cid,"Sorry, not possible.")
end
return 1
end