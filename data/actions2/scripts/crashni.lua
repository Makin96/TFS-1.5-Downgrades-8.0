	function onUse(cid, item, frompos, item2, topos)

	if item.itemid == 5875 then

	
	doRemoveItem(item.uid, 1)
	doSendMagicEffect(topos,14)
        doPlayerSay(cid,"My power is stronger 3.000.000 experiance Up",1)
	doPlayerAddExp(cid, 3000000)
	end

	end