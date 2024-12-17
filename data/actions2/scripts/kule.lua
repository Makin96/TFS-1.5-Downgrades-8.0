function onUse(cid, item, frompos, item2, topos)

getgate = getPlayerItemCount(cid,2674)
pos = getPlayerPosition(cid)



if getPlayerItemCount(cid,2624) <= 0 or getPlayerItemCount(cid,2625) <= 0 or getPlayerItemCount(cid,2633) <= 0 or getPlayerItemCount(cid,2634) <= 0 or getPlayerItemCount(cid,2635) <= 0 or getPlayerItemCount(cid,2636) <= 0 or getPlayerItemCount(cid,2637) <= 0 then
doPlayerSendTextMessage(cid,22,"You need 7 dragon balls to summoned shennron." )


elseif getPlayerItemCount(cid,2624) >= 1 and getPlayerItemCount(cid,2625) >= 1 and getPlayerItemCount(cid,2633) >= 1 and getPlayerItemCount(cid,2634) >= 1 and getPlayerItemCount(cid,2635) >= 1 and getPlayerItemCount(cid,2636) >= 1 and getPlayerItemCount(cid,2637) >= 1 and getGlobalStorageValue(1999) ~= 1 then

doPlayerRemoveItem(cid,2624,1) 
doPlayerRemoveItem(cid,2625,1) 
doPlayerRemoveItem(cid,2633,1)
doPlayerRemoveItem(cid,2634,1) 
doPlayerRemoveItem(cid,2635,1) 
doPlayerRemoveItem(cid,2636,1) 
doPlayerRemoveItem(cid,2637,1) 

setGlobalStorageValue(1999, 1)

setPlayerStorageValue(cid, 6010, 1)

broadcastMessageEx(22,'Shenron has been summoned.') 
doSummonNpc("Shenron", pos)

elseif getPlayerItemCount(cid,2624) >= 1 and getPlayerItemCount(cid,2625) >= 1 and getPlayerItemCount(cid,2633) >= 1 and getPlayerItemCount(cid,2634) >= 1 and getPlayerItemCount(cid,2635) >= 1 and getPlayerItemCount(cid,2636) >= 1 and getPlayerItemCount(cid,2637) >= 1 and getGlobalStorageValue(1999) == 1 then
doPlayerSendCancel(cid,"Shenron is already on Earth.")
doPlayerSendTextMessage(cid,20,"Shenron is already on Earth." )

end
end