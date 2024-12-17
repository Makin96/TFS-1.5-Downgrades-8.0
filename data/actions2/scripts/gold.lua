function onUse(cid, item, frompos, item2, topos)
   	if item.itemid == 2148 and item.type == 100 then
   		doRemoveItem(item.uid,item.type)
   		doPlayerAddItem(cid,2152,1)
   		doPlayerSendTextMessage(cid,22,"You have changed 100 zeni to 1 dolar")
   	elseif item.itemid == 2148 and item.type < 100 then
   		doPlayerSendTextMessage(cid,22,"You have to got 100 zeni to change for dolar")
   	end
   end
