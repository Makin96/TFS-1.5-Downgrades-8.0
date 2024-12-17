function onUse(cid, item, frompos, item2, topos)



player1 = getThingfromPos(topos)

lol = getPlayerName(player1.uid)

local nick = getPlayerName(player1.uid)
local ki = getPlayerMagLevel(player1.uid)
local lvl = getPlayerLevel(player1.uid)
local mana = getPlayerMana(player1.uid)
local hp = getPlayerHealth(player1.uid)
local maxmana = getPlayerMaxMana(player1.uid)
local maxhp = getPlayerMaxHealth(player1.uid)
local access = getPlayerAccess(player1.uid)

if isPlayer(player1.uid) ~= 1 then
doPlayerSendCancel(cid,"You can scout only players.") 


elseif access <= 3 then
doPlayerSendTextMessage(cid,22, 'Nick: '..nick..'')
doPlayerSendTextMessage(cid,22, 'Level: '..lvl..'')
doPlayerSendTextMessage(cid,22, 'Ki Level: '..ki..'')
doPlayerSendTextMessage(cid,22, 'Hp: '..hp..'/'..maxhp..'')
doPlayerSendTextMessage(cid,22, 'Ki Points: '..mana..'/'..maxmana..'')



	else 
		return 0
	end
	return 1
end
