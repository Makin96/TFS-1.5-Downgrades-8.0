-- Okiennice zrobione przez Smoczek Leon --
-- Windows by Smoczek Leon --

function onUse(cid, item, frompos, item2, topos)

local open = {6472, 6473, 6452, 6453, 7031, 7032, 6790, 6791, 6442, 6443, 6438, 6439, 6446, 6447, 7027, 7028, 6456, 6457, 6464, 6465, 6468, 6469, 6460, 6461}
local closed = {6470, 6471, 6450, 6451, 7029, 7030, 6788, 6789, 6440, 6441, 6436, 6437, 6444, 6445, 7025, 7026, 6454, 6455, 6462, 6463, 6466, 6467, 6458, 6459}

if getTileHouseInfo(getPlayerPosition(cid)) ~= 0 or getTileHouseInfo(frompos) == 0 then

    if isInArray(open, item.itemid)== TRUE then
        doTransformItem(item.uid, item.itemid-2)

    elseif isInArray(closed, item.itemid)== TRUE then
        doTransformItem(item.uid, item.itemid+2)
    else
    end
else
doPlayerSendCancel(cid,"You can open/closed window only in house!")
end
return 1
end