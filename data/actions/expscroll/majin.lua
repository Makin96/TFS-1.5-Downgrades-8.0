function onUse(cid, item, frompos, item2, topos)

if getPlayerStorageValue(cid,6670) == 2 then
doPlayerSendTextMessage(cid,22,"Sorry You Cant use this item again.")	


elseif getPlayerStorageValue(cid,6670) == 1 then
doRemoveItem(item.uid, 1)
doSendMagicEffect(topos,14)
doPlayerSay(cid,"Majin Power!!! 1.000.000 experiance Up",1)
doPlayerAddExp(cid, 1000000)
setPlayerStorageValue(cid,6670,2)


else
doRemoveItem(item.uid, 1)
doSendMagicEffect(topos,14)
doPlayerSay(cid,"Majin Power!!! 1.000.000 experiance Up",1)
doPlayerAddExp(cid, 1000000)
setPlayerStorageValue(cid,6670,1)
end
end 
                    
                	