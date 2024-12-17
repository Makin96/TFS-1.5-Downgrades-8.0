function onUse(cid, item, frompos, item2, topos)
itempos = {x=160, y=65, z=8, stackpos=253}
getgate = getThingfromPos(itempos)
if item.uid == 2002 then
if item.itemid == 1945 then
doCreateItem(3678,1,itempos)
doTransformItem(item.uid,item.itemid+1)

elseif item.uid == 2002 and item.itemid == 1946 then
doTransformItem(item.uid,item.itemid-1)
end
end
end