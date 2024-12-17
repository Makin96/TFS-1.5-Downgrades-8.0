function onUse(cid, item, frompos, item2, topos)

if getPlayerStorageValue(cid,6662) == 2 then
doPlayerSendTextMessage(cid,22,"Sorry You Cant use this item again.")	


elseif getPlayerStorageValue(cid,6662) == 1 then
doRemoveItem(item.uid, 1)
doSendMagicEffect(topos,14)
doPlayerSay(cid,"My power is stronger 300.000 experiance Up",1)
doPlayerAddExp(cid, 300000)
setPlayerStorageValue(cid,6662,2)


else
doRemoveItem(item.uid, 1)
doSendMagicEffect(topos,14)
doPlayerSay(cid,"My power is stronger 300.000 experiance Up",1)
doPlayerAddExp(cid, 300000)
setPlayerStorageValue(cid,6662,1)
end
end 
                    
         