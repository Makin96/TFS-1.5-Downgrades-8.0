-- annihilator chests

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 5020 then
   		queststatus = getPlayerStorageValue(cid,5020)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a helmet.")
   			doPlayerAddItem(cid,2493,100)
   			setPlayerStorageValue(cid,5020,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5021 then
   		queststatus = getPlayerStorageValue(cid,5020)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a armor.")
   			doPlayerAddItem(cid,2513,1)
   			setPlayerStorageValue(cid,5020,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5022 then
   		queststatus = getPlayerStorageValue(cid,5020)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a legs.")
   			doPlayerAddItem(cid,2648,1)
   			setPlayerStorageValue(cid,5020,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5023 then
   		queststatus = getPlayerStorageValue(cid,5020)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a boots.")
   			doPlayerAddItem(cid,7457,1)
   			setPlayerStorageValue(cid,5020,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end
   	return 1
end
