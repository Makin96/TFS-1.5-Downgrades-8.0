function onUse(cid, item, frompos, item2, topos)
   	if item.itemid == 2152 and item.type == 100 then
   		doRemoveItem(item.uid,item.type)
   		doPlayerAddItem(cid,2160,1)
   		doPlayerSendTextMessage(cid,22,"You have changed 100 dolars to 1 gold")
   	elseif item.itemid == 2152 and item.type < 100 then
   		doRemoveItem(item.uid,1)
   		doPlayerAddItem(cid,2148,100)
   		doPlayerSendTextMessage(cid,22,"You have changed 1 dolar to 100 zeni")
   	end
   end
