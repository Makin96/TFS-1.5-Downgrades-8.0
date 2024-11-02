function onCastSpell(cid, var)
	local pos = getPlayerPosition(cid)
	doSendMagicEffect(pos, CONST_ME_MAGIC_GREEN)
	return doSetCreatureLight(cid, 7, 215, (6*60+10)*1000)
end
