function onUse(cid, item, frompos, item2, topos)  

if item.itemid == 2314 and item.type > 1 then  

else  
doRemoveItem(item.uid,1)  
end  

 if item2.itemid == 1490 then  
  doRemoveItem(item2.uid,item2.type)  
  doSummonCreature("saibamen", topos)  
  doChangeTypeItem(item.uid,item.type-1)  

end  
return 1  
end  
