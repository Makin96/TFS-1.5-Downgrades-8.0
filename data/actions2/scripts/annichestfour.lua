-- annihilator chests

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == 5025 then
   		queststatus = getPlayerStorageValue(cid,5045)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a strenght skill.")
   			doPlayerAddItem(cid,2262,1)
   			setPlayerStorageValue(cid,5045,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5026 then
   		queststatus = getPlayerStorageValue(cid,5045)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a defense skill.")
   			doPlayerAddItem(cid,2264,1)
   			setPlayerStorageValue(cid,5045,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5027 then
   		queststatus = getPlayerStorageValue(cid,5045)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have found a sword skill.")
   			doPlayerAddItem(cid,2265,1)
   			setPlayerStorageValue(cid,5045,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
   	elseif item.uid == 5028 then
   		queststatus = getPlayerStorageValue(cid,5045)
   		if queststatus == -1 then
   			doPlayerSendTextMessage(cid,22,"You have ki blasting skills.")
   			doPlayerAddItem(cid,2263,1)
   			setPlayerStorageValue(cid,5045,1)
   		else
   			doPlayerSendTextMessage(cid,22,"It is empty.")
   		end
	else
		return 0
   	end
   	return 1
end
