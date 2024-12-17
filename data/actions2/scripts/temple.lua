--New Temple By Palladineq
function onUse(cid, item, frompos, item2, topos)
newpos = {x=160, y=54, z=7}
	if item.uid == 5678 and item.itemid == 1946 then
		doTransformItem(item.uid,item.itemid-1)
		doPlayerSetMasterPos(cid,newpos)
		doTeleportThing(cid,newpos)
		doPlayerSendTextMessage(cid,3,"Jestes Mieszkancem Amonii!")
	elseif item.uid == 5678 and item.itemid == 1945 then
		doTransformItem(item.uid,item.itemid+1)
		doPlayerSendTextMessage(cid,2,"ZrGzyT!?!")
	end
end