local player1 = {x=161, y=295, z=8, stackpos=253}

local position1 = {x=208, y=305, z=9}

local uniqueidoflever = 7012

function onUse(cid, item, frompos, item2, topos)

   	if item.uid == uniqueidoflever and item.itemid == 1945 then
		player1pos = player1		
		player1 = getThingfromPos(player1pos)


		if player1.itemid > 0 then
			queststatus1 = getPlayerStorageValue(player1.uid,uniqueidoflever)

			if queststatus1 == -1 then
				nplayer1pos = position1

				doSendMagicEffect(player1pos,2)

				doTeleportThing(player1.uid,nplayer1pos)

				doSendMagicEffect(nplayer1pos,10)

				doTransformItem(item.uid,item.itemid+1)
			else
				doPlayerSendCancel(cid,"You has already done this quest.")
			end
		else
			doPlayerSendCancel(cid,"You need one player for this quest.")
		end

	elseif item.uid == uniqueidoflever and item.itemid == 1946 then
		if getPlayerAccess(cid) > 0 then
			doTransformItem(item.uid,item.itemid-1)
		else
			doPlayerSendCancel(cid,"Sorry, not possible.")
		end
	else
		return 0
	end

	return 1
end