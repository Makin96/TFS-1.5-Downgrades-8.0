function onUse(cid, item, frompos, item2, topos)
randskill = math.random(50,2000000)
random = math.random(7,7)
randlose = math.random(1,500)
skillrandom = math.random(0,6)

if item.itemid == 2008 then

	if random == 7 then
		doPlayerAddSkillTry(cid,0,randskill)
		doPlayerSendTextMessage(cid,1,"In water POWER!")


	end
if randlose <= 189 then
doRemoveItem(item.uid,2)
elseif randlose >= 190 and
randlose <= 230 then
doRemoveItem(item.uid,3)
elseif randlose >= 231 and
randlose <= 490 then
doRemoveItem(item.uid,1)
elseif randlose >= 491 then
doRemoveItem(item.uid,50)
end
end
end