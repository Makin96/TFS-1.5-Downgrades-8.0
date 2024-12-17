function onUse(cid, item, frompos, item2, topos)
if item.uid == 2708 then
doPlayerAddItem(cid,2675,1)
else
return 0
end
return 1
end