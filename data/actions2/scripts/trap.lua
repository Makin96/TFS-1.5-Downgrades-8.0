function onWalkIn(cid, item, topos)
if item.actionid == 7201 then
doPlayerAddHealth(cid,-20)
doPlayerSendTextMessage(cid,22,"You have lose 20 HP")
doTransformItem(item.uid, 1513)
doSendMagicEffect(topos,0)

end
return 1
end

function onWalkOut(cid, item, topos)
if item.itemid == 1513 then
doTransformItem(item.uid, 1512)
end
return 1
end

