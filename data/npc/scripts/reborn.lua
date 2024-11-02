local focus = 0
local talk_start = 0
local target = 0
local following = false
local attacking = false

function onThingMove(creature, thing, oldpos, oldstackpos)

end


function onCreatureAppear(creature)

end


function onCreatureDisappear(cid, pos)
  	if focus == cid then
          selfSay('?????.')
          focus = 0
          talk_start = 0
  	end
end


function onCreatureTurn(creature)

end


function msgcontains(txt, str)
  	return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end


function onCreatureSay(cid, type, msg)
  	msg = string.lower(msg)

  	if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceToCreature(cid) < 4 then
		
			selfSay('Hello. If you ready I can "Reborn" you.')
			focus = cid
			talk_start = os.clock()
		

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! Hey!.')

  	elseif focus == cid then
		talk_start = os.clock()

if msgcontains(msg, 'reborn') and getPlayerStorageValue(cid,30023) == 4 then
				selfSay('Sorry, but you are after reborn.')
			focus = 0
			talk_start = 0

			elseif msgcontains(msg, 'reborn') and getPlayerLevel(cid) < 250 and getPlayerStorageValue(cid,30023) ~= 4 then
					selfSay('Hehe, I say If you READY. You do not have 250 lvl.')


			elseif msgcontains(msg, 'reborn') then
					selfSay('Are you sure?')
                                 talk_state = 2

                       elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and getPlayerVocation(cid) == 20 then
                  doReborn(cid,201,137)
setPlayerStorageValue(cid,30023,4)
talk_state = 0

	elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and (getPlayerVocation(cid) == 25 or getPlayerVocation(cid) == 26 or getPlayerVocation(cid) == 37) then
doReborn(cid,214,152)
setPlayerStorageValue(cid,30023,4)
talk_state = 0

	elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and getPlayerVocation(cid) >= 103 and getPlayerVocation(cid) <= 104 then
doReborn(cid,286,60)			
setPlayerStorageValue(cid,30023,4)
talk_state = 0

elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and getPlayerVocation(cid) == 58 then
doReborn(cid,247,34)
setPlayerStorageValue(cid,30023,4)
talk_state = 0

elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and getPlayerVocation(cid) == 71 then
doReborn(cid,258,15)
setPlayerStorageValue(cid,30023,4)
talk_state = 0

elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and getPlayerVocation(cid) == 75 then
doReborn(cid,263,15)
setPlayerStorageValue(cid,30023,4)
talk_state = 0

elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and getPlayerVocation(cid) == 274 then
doReborn(cid,275,118)
setPlayerStorageValue(cid,30023,4)
talk_state = 0

elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and (getPlayerVocation(cid) == 76 or getPlayerVocation(cid) == 77) then
doReborn(cid,227,144)
doPlayerAddHealthMax(cid,20000)
doPlayerAddManaMax(cid,20000)
setPlayerStorageValue(cid,30023,4)
talk_state = 0

elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and getPlayerVocation(cid) >= 80 and getPlayerVocation(cid) <= 86 then
selfSay('You cannot reborn in fusion.')

elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and (getPlayerVocation(cid) == 78 or getPlayerVocation(cid) == 79) then
doReborn(cid,232,150)
doPlayerAddHealthMax(cid,20000)
doPlayerAddManaMax(cid,20000)
setPlayerStorageValue(cid,30023,4)
talk_state = 0

elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and getPlayerVocation(cid) == 280 then
doReborn(cid,281,190)
setPlayerStorageValue(cid,30023,4)
talk_state = 0

elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and getPlayerVocation(cid) == 112 then
doReborn(cid,298,221)
setPlayerStorageValue(cid,30023,4)
talk_state = 0

elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and getPlayerVocation(cid) == 50 then
doReborn(cid,253,101)
setPlayerStorageValue(cid,30023,4)
talk_state = 0

elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and (getPlayerVocation(cid) == 29 or getPlayerVocation(cid) == 30) then
doReborn(cid,208,148)
setPlayerStorageValue(cid,30023,4)
talk_state = 0

elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and getPlayerVocation(cid) == 44 then
doReborn(cid,237,173)
setPlayerStorageValue(cid,30023,4)
talk_state = 0

elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and (getPlayerVocation(cid) == 29 or getPlayerVocation(cid) == 30) then
doReborn(cid,208,148)
setPlayerStorageValue(cid,30023,4)
talk_state = 0

elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and getPlayerVocation(cid) == 292 then
doReborn(cid,293,281)
setPlayerStorageValue(cid,30023,4)
talk_state = 0

elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and (getPlayerVocation(cid) == 34 or getPlayerVocation(cid) == 35 or getPlayerVocation(cid) == 36) then
doReborn(cid,221,162)
setPlayerStorageValue(cid,30023,4)
talk_state = 0

elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and getPlayerVocation(cid) == 96 then
doReborn(cid,242,178)
setPlayerStorageValue(cid,30023,4)
talk_state = 0

elseif msgcontains(msg, 'yes') and talk_state == 2 and getPlayerLevel(cid) >= 250 and (getPlayerVocation(cid) == 12 or getPlayerVocation(cid) <= 62 and getPlayerVocation(cid) >= 65) then
doReborn(cid,268,184)
doPlayerAddHealthMax(cid,20000)
doPlayerAddManaMax(cid,20000)
setPlayerStorageValue(cid,30023,4)
talk_state = 0

elseif msgcontains(msg, 'yes') and talk_state == 2 then
selfSay('Sorry, ' .. getCreatureName(cid) .. '! You must revert or transform.')


		elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
			selfSay('Good bye.')
			focus = 0
			talk_start = 0
		end
	end
end

function onThink()
	doNpcSetCreatureFocus(focus)
  	if (os.clock() - talk_start) > 45 then
  		if focus > 0 then
  			selfSay('Next Please...')
  		end
  			focus = 0
  	end
 	if focus ~= 0 then
 		if getDistanceToCreature(focus) > 5 then
 			selfSay('Good bye then.')
 			focus = 0
 		end
 	end
end
