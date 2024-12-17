	function onUse(cid, item, frompos, item2, topos)

	if item.itemid == 7440 then

	doPlayerAddMana(cid,5000)
	doPlayerAddHealth(cid,1000)
	doRemoveItem(item.uid, 1)
	doSendMagicEffect(topos,14)
        doPlayerSay(cid,"Ohh Yeah",1)
	end

	end