	function onUse(cid, item, frompos, item2, topos)

	if item.itemid == 2689 then

	doPlayerAddMana(cid,2000)
	doPlayerAddHealth(cid,500)
	doRemoveItem(item.uid, 1)
	doSendMagicEffect(topos,14)
        doPlayerSay(cid,"Yeah",1)
	end

	end