function onCastSpell(cid, var)
	local pos = getPlayerPosition(cid)
	doSendMagicEffect(pos, 12)
	return doSetCreatureLight(cid, 11, 215, (60*33+10)*1000)
end