local playerpos = {
	player1pos = {x=161,y=298,z=8}

	}
	
local newpos = {
	new1pos = {x=208,y=305,z=9}

	}
	
	
	
	
	
local t = {
        storage = 2001,
	ids = {5,6,7},
	message = "Put your message here.",
	entrada = { -- player pos
		{x = 186, y = 57, z = 7},
		{x = 185, y = 57, z = 7},
                {x = 186, y = 57, z = 7}
	},
	saida = { -- player to pos
		{x = 191, y = 55, z = 6},
		{x = 190, y = 55, z = 6},
		{x = 189, y = 55, z = 6}
	}
}
function onUse(cid, item, fromPosition, itemEx, toPosition)
	local check = {}
	for _, k in ipairs(t.entrada) do
		local x = getTopCreature(k).uid
		if(x == 0 or not isPlayer(x) or not isInArray(t.ids, getPlayerStorageValue(x, t.storage))) then
			doPlayerSendCancel(cid, 'dont have players or no have storage.')
			return true
		end
		table.insert(check, x)
	end
	for i, tid in ipairs(check) do
		doSendMagicEffect(t.entrada[i], CONST_ME_POFF)
		doTeleportThing(tid, t.saida[i], false)
		doSendMagicEffect(t.saida[i], CONST_ME_ENERGYAREA)
                doPlayerSendTextMessage(tid, 19, t.message)
	end
	doTransformItem(item.uid, item.itemid == 1945 and 1946 or 1945)
	return true
end