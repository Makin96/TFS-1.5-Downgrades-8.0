function onUse(cid, item, frompos, item2, topos)
  	if doRemoveItem(item.uid,1) then
  		doPlayerSendTextMessage(cid,22,"You have changed 1 gold to 100 dolars")
  		doPlayerAddItem(cid,2152,100)
  	end
  end
