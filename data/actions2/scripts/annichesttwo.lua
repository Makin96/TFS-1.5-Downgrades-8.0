-- annihilator chests

function onUse(cid, item, frompos, item2, topos)
   if item.uid == 5010 then
   queststatus = getPlayerStorageValue(cid,5011)
   if queststatus == -1 then
   doPlayerSendTextMessage(cid,22,"Glove")
   doPlayerAddItem(cid,2380,1)
   setPlayerStorageValue(cid,5011,1)
   else
   doPlayerSendTextMessage(cid,22,"Empty")
   end
   elseif item.uid == 5011 then
   queststatus = getPlayerStorageValue(cid,5011)
   if queststatus == -1 then
   doPlayerSendTextMessage(cid,22,"Sword")
   doPlayerAddItem(cid,2395,1)
   setPlayerStorageValue(cid,5011,1)
   else
   doPlayerSendTextMessage(cid,22,"Empty")
   end
   elseif item.uid == 5012 then
   queststatus = getPlayerStorageValue(cid,5011)
   if queststatus == -1 then
   doPlayerSendTextMessage(cid,22,"Castet!")
   doPlayerAddItem(cid,2432,1)
   setPlayerStorageValue(cid,5011,1)
   else
   doPlayerSendTextMessage(cid,22,"Empty")
   end
   elseif item.uid == 5013 then
   queststatus = getPlayerStorageValue(cid,5011)
   if queststatus == -1 then
   doPlayerSendTextMessage(cid,22,"Blaster!")
   doPlayerAddItem(cid,2453,1)
   setPlayerStorageValue(cid,5011,1)
   else
   doPlayerSendTextMessage(cid,22,"Empty")
   end
else
return 0
   end

   return 1
end
