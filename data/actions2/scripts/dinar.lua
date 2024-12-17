function onUse(cid, item, frompos, item2, topos)
  	if doRemoveItem(item.uid,1) then
  		doPlayerSendTextMessage(cid,22,"You have changed 1 dinar to 100 crystal coins")
  		doPlayerAddItem(cid,2160,100)
  	end
  end