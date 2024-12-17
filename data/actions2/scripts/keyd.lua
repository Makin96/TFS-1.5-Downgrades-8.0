--keys--

function onUse(cid, item, frompos, item2, topos)

	if item.actionid == 2092 and item.actionid == item2.actionid then
		match = 1
	else
		match = 0
	end

	if item2.itemid == 1250 then

		if match == 1 then
			doTransformItem(item2.uid,item2.itemid+1)
		else
			doPlayerSendCancel(cid,"The key does not match.")
		end
	elseif item2.itemid == 1209 or
		item2.itemid == 1212 or
		item2.itemid == 1231 or
		item2.itemid == 1234 or
		item2.itemid == 1249 or
		item2.itemid == 1252 then

		if match == 1 then
			doTransformItem(item2.uid,item2.itemid+2)
		else
			doPlayerSendCancel(cid,"The key does not match.")
		end
	else
		return 0
	end

	return 1
	
end