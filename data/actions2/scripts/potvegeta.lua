function onUse(cid, item, frompos, item2, topos)

	local level = getPlayerLevel(cid)
	local mlevel = getPlayerMagLevel(cid)
	
	local exhausted_seconds = 1/3
	local exhausted_storagevalue = 7480
	
	local mana_minimum = 500
	local mana_maximum =500

	local hp_minimum = 2000
	local hp_maximum = 2000

	local mana_add = math.random(mana_minimum, mana_maximum)
		local hp_add = math.random(hp_minimum, hp_maximum)
	
		
		if(item.type >= 1) then
			if(os.time() > getPlayerStorageValue(cid, exhausted_storagevalue)) then
				if(isPlayer(cid) == 1) then
doSendMagicEffect(topos,14)
					doPlayerAddMana(cid, mana_add)
                                        doPlayerAddHealth(cid, hp_add)
doPlayerSay(cid,"Yeah",1)
					setPlayerStorageValue(cid, exhausted_storagevalue, os.time() + exhausted_seconds)
					doChangeTypeItem(item.uid, item.type - 1)
				else
					doSendMagicEffect(frompos, CONST_ME_POFF)
					doPlayerSendCancel(cid, "You are exchausted.")
				end
			else
				doSendMagicEffect(frompos, CONST_ME_POFF)
				doPlayerSendCancel(cid, "You are exhausted.")
			end
		else
			if(os.time() < getPlayerStorageValue(cid, exhausted_storagevalue)) then
				doSendMagicEffect(frompos, CONST_ME_POFF)
				doPlayerSendCancel(cid, "You are exhausted.")
			else
				if(isPlayer(cid) == 1) then
doSendMagicEffect(topos,14)
					doPlayerAddMana(cid, mana_add)
                                        doPlayerAddHealth(cid, hp_add)
doPlayerSay(cid,"Yeah",1)
					setPlayerStorageValue(cid, exhausted_storagevalue, os.time() + exhausted_seconds)
					doRemoveItem(item.uid, 1)
				else
					doSendMagicEffect(frompos, CONST_ME_POFF)
					doPlayerSendCancel(cid, "You are exchausted.")
				end
			end
		end
						
	return 1
end