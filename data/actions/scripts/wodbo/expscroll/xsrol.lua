local experience = 500000

function onUse (cid, item, fromPosition, itemEx, toPosition)

if doRemoveItem(item.uid, 1) then
doSendMagicEffect(getThingPos(cid),14)
doPlayerAddExp (cid, experience)
doCreatureSay(cid, "My power is stronger 500.000 experiance Up", TALKTYPE_ORANGE_1)
setPlayerStorageValue(cid, 6665, 2)

end
end