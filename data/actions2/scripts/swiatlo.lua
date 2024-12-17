--Anstice's Incredible Teleport Rune
function onUse(cid, item, frompos, item2, topos)
doCreateItem(1500,1,topos)
doPlayerSendCancel(cid,"Niech stanie sie swiatlosc..")
if item.itemid == 2298 and item.type > 1 then
doChangeTypeItem(item.uid,item.type-1)
elseif item.itemid == 2298 and item.type == 1 then
doRemoveItem(item.uid,1)

end
return 1
end