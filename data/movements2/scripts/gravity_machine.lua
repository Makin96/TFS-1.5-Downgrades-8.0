function onStepIn(cid, item, pos)

if isPlayer(cid) == 1 then

local set = getSetMachine(cid, 4442)
local lvl = getPlayerLevel(cid)
 
if lvl > 49 and getPlayerAccess(cid) >= 1 then
doPlayerAddExp(cid,0)

elseif lvl > 29 and getPlayerAccess(cid) == 0 then
doPlayerAddExp(cid,0)

elseif set <= 0 and item.itemid == 3170 then
doPlayerAddExp(cid,1)

elseif getPlayerAccess(cid) >= 1 and set <= (lvl) and item.itemid == 3170 then
local addExp2 = math.random(set*2, set*3)
local hp2 =  math.random(getPlayerMaxHealth(cid)/20 + 1, getPlayerMaxHealth(cid)/20 + 30)


doPlayerAddExp(cid,addExp2)
doPlayerAddHealth(cid,-hp2)

elseif set <= (lvl) and item.itemid == 3170 then

local addExp = math.random(set, set*1.5)
local hp =  math.random(getPlayerMaxHealth(cid)/20 + 1, getPlayerMaxHealth(cid)/20 + 30)


doPlayerAddExp(cid,addExp)
doPlayerAddHealth(cid,-hp)


else
doPlayerSendCancel(cid,"Set Machine to lower than "..(lvl+1)..".")

end
end
end