function onUse(cid, item, frompos, item2, topos)

kula1 = {x=83, y=377, z=7, stackpos=1}

getpiece1 = getThingfromPos(kula1)


player = getPlayerPosition(cid)

if item.itemid == 2062 and getpiece1.itemid == 2625 then

if player.x > 700 then
doPlayerSendTextMessage(cid,22,"Dragon Ball is on Earth.")
	elseif player.z > kula1.z and (player.y - kula1.y) <= 3 and (player.y - kula1.y) > -3 then
		doPlayerSendTextMessage(cid,22,"Dragon Ball is above you.")
	elseif player.z < kula1.z and (player.x - kula1.x) <= 3 and (player.x - kula1.x) > -3 then
		doPlayerSendTextMessage(cid,22,"Dragon Ball is below you.")
	else
		if player.x > kula1.x then	
			if player.y > kula1.y then		
				if (player.y - kula1.y) >= 3 then
					if (player.x - kula1.x) >= 1 then
						doPlayerSendTextMessage(cid,22,"Dragon Ball is to the north-west.")
					else
						if (player.y - kula1.y) <= 10 then
							doPlayerSendTextMessage(cid,22,"Dragon Ball is to the north.")
						else
							doPlayerSendTextMessage(cid,22,"Dragon Ball is far to the north.")
						end
					end
				else
					if (player.x - kula1.x) <= 10 then
						doPlayerSendTextMessage(cid,22,"Dragon Ball is to the west.")
					else
						doPlayerSendTextMessage(cid,22,"Dragon Ball is far to the west.")
					end
				end
			elseif player.y < kula1.y then
				if (kula1.y - player.y) >= 3 then
					if (kula1.x - player.x) >= 1 then
						doPlayerSendTextMessage(cid,22,"Dragon Ball is to the south-west.")
					else
if (kula1.y - player.y) <= 10 then
							doPlayerSendTextMessage(cid,22,"Dragon Ball is to the south.")
						else
							doPlayerSendTextMessage(cid,22,"Dragon Ball is far to the south.")
						end
					end
				else
					if (player.x - kula1.x) <= 10 then
						doPlayerSendTextMessage(cid,22,"Dragon Ball is to the west.")
					else
						doPlayerSendTextMessage(cid,22,"Dragon Ball is far to the west.")
					end
				end
			else
				doPlayerSendTextMessage(cid,22,"Dragon Ball is to the west.")
			end
		elseif player.x < kula1.x then
			if player.y > kula1.y then
				if (player.y - kula1.y) >= 3 then
					if (kula1.x - player.x) >= 1 then
						doPlayerSendTextMessage(cid,22,"Dragon Ball is to the north-east.")
					else
						if (player.y - kula1.y) <= 10 then
							doPlayerSendTextMessage(cid,22,"Dragon Ball is to the north.")
						else
							doPlayerSendTextMessage(cid,22,"Dragon Ball is far to the north.")
						end
					end
				else
					if (kula1.x - player.x) <= 10 then
						doPlayerSendTextMessage(cid,22,"Dragon Ball is to the east.")
					else
						doPlayerSendTextMessage(cid,22,"Dragon Ball is far to the east.")
					end
				end
			elseif player.y < kula1.y then
				if (kula1.y - player.y) >= 3 then
					if (kula1.x - player.x) >= 1 then
						doPlayerSendTextMessage(cid,22,"Dragon Ball is to the south-east.")
					else
						if (kula1.y - player.y) <= 10 then
							doPlayerSendTextMessage(cid,22,"Dragon Ball is to the south.")
						else
							doPlayerSendTextMessage(cid,22,"Dragon Ball is far to the south.")
						end
					end
				else
					if (kula1.x - player.x) <= 10 then
						doPlayerSendTextMessage(cid,22,"Dragon Ball is to the east.")
					else
						doPlayerSendTextMessage(cid,22,"Dragon Ball is far to the east.")
					end
				end
			else
doPlayerSendTextMessage(cid,22,"Dragon Ball is to the east.")
			end
		else
			if player.y > kula1.y then	
				doPlayerSendTextMessage(cid,22,"Dragon Ball is to the north.")
			else
				doPlayerSendTextMessage(cid,22,"Dragon Ball is to the south.")
			end
		end
	end

else
doPlayerSendCancel(cid,"Radar Cant find the Dragon Ball.")
end
return 1
end