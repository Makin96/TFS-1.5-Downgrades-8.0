function onUse(cid, item, frompos, item2, topos) 
mag = getPlayerMagLevel(cid) 
if mag >= 0 then 
doSendMagicEffect(topos,1) 
doPlayerSay(cid,"My Power Is Up",16) 
doPlayerAddExp(cid,"1") 
if item.type > 1 then 
end
else 
doSendMagicEffect(frompos,2) 
doPlayerSendCancel(cid,"Nie masz 0 kilvlu aby uzyc Chyberlic Chamber!") 
end 
return 1 
end