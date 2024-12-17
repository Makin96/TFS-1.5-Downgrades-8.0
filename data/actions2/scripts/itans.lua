  function onUse(cid, item, frompos, item2, topos)
random = math.random(1,60)
	if item.itemid == 2157 then
		if random == 16 then
			doPlayerAddItem(cid,2361,1)
			doPlayerSendTextMessage(cid,22,"Frozen Starlight")
		elseif random == 26 then
			doPlayerAddItem(cid,2393,1)
			doPlayerSendTextMessage(cid,22,"GS")
		elseif random == 40 then
			doPlayerAddItem(cid,2197,1)
			doPlayerSendTextMessage(cid,22,"SSA")
		elseif random == 50 then
			doPlayerAddItem(cid,2151,5)
			doPlayerSendTextMessage(cid,22,"Taloniki xD")
		end
	doRemoveItem(item.uid,1)
	end
return 1
end