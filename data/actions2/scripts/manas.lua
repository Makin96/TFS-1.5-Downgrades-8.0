function onUse(cid, item, frompos, item2, topos)
if item.uid == 2006 then
doPlayerAddMana(cid,300,1)
doPlayerSay(cid,"I feel my power Up!",1)
else
return 0
end
return 1
end