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
          selfSay('Good bye then.')
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

  	

	
  		if msgcontains(msg, 'hi') then

selfSay('Hi, if you want to get the complet key you must put left key on the left gravis, next put right key on the right gravis and use the switch to get complite magic key.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()



                        if msgcontains(msg, 'ye2321s') then
			if getPlayerStorageValue(cid,1006) == 1 then
			
		selfSay('Sorry You Cant Do this quest.')	
			elseif msgcontains(msg, 'yfdfdfeees') then
                       if doPlayerRemoveItem(cid,2679,100) == 0 then
                       selfSay('Sorry you Dont have that item.')	

else		
				if doPlayerAddItem(cid,5920,1) then
				
					setPlayerStorageValue(cid,1006,1)
                                    selfSay('Thanks take this')
					focus = 0
					talk_start = 0

			
end
end
end
		elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
			selfSay('Good bye, ' .. getCreatureName(cid) .. '!')
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
