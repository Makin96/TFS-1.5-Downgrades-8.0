function onUse(cid, item, frompos, item2, topos) 

rand1 = math.random(100) 
rand2 = math.random(70) 
rand3 = math.random(15)

if rand1 <= 50 then 
   doPlayerAddItem(cid,2148,rand1) 
   doPlayerSay(cid,"... Only gold ...",16) 
elseif rand1 >= 50 and rand1 <= 70 then 
   doPlayerAddItem(cid,2152,rand3) 
   doPlayerSay(cid,"Platinum :)",16) 
elseif rand1 >= 98 then 
   doPlayerAddItem(cid,2160,rand3) 
   doPlayerSay(cid,"Oh My God! Crystal Coin!",16) 
elseif rand3 <= 10 then
doTransformItem(item.uid,item.itemid+1) 
end 

   return 1 
end