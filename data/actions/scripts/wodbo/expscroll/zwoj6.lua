local experience = 3000000

function onUse (cid, item, fromPosition, itemEx, toPosition)

if getPlayerStorageValue(cid, 6665) == 2 then
doPlayerSendTextMessage(cid,22,"Sorry You Cant use this item again.")
doSendMagicEffect(getThingPos(cid),3)


elseif getPlayerStorageValue(cid, 6665) == 1 then
doRemoveItem(item.uid, 1)
doSendMagicEffect(getThingPos(cid),14)
doPlayerAddExp (cid, experience)
doCreatureSay(cid, "My power is stronger 3.000.000 experiance Up", TALKTYPE_ORANGE_1)
setPlayerStorageValue(cid, 6665, 2)

else
doRemoveItem(item.uid, 1)
doSendMagicEffect(getThingPos(cid),14)
doPlayerAddExp (cid, experience)
doCreatureSay(cid, "My power is stronger 3.000.000 experiance Up", TALKTYPE_ORANGE_1)
setPlayerStorageValue(cid, 6665, 1)


end
end
 