function onUse(cid, item, frompos, item2, topos)
if item.uid == 7100 then 
if getPlayerAccess(cid) >= 1 then
local pos = getPlayerPosition(cid)
if pos.x == topos.x then
if pos.y < topos.y then
pos.y = topos.y + 1
else
pos.y = topos.y - 1
end
elseif pos.y == topos.y then
if pos.x < topos.x then
pos.x = topos.x + 1
else
pos.x = topos.x - 1
end
else
doPlayerSendTextMessage(cid,22,'Sorry Only Premium Player Can Past this door.')
end
end
doTeleportThing(cid,pos)
end
end
