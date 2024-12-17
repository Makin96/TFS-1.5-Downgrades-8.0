function onUse(cid, item, frompos, item2, topos)

  if item2.itemid == 2739 then
   doTransformItem(item2.uid,2737)
   doCreateItem(2694,1,topos)
   doDecayItem(item2.uid)
end
end