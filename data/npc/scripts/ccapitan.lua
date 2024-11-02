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
          selfSay('Hey!.')
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

  	if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceToCreature(cid) < 4 and getPlayerPz(cid) <= 0 then
		
			selfSay('I take you the dragon ball if you win, ready?')
			focus = cid
			talk_start = os.clock()
		

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! ????????.')

  	elseif focus == cid then
		talk_start = os.clock()

			
			if msgcontains(msg, 'yes') then
			if getPlayerStorageValue(cid,8000) <= 32 then
			
		selfSay('Sorry You Cant Do this saga.')	
			elseif msgcontains(msg, 'yes') then
                        if getPlayerStorageValue(cid,8000) >= 34 then
                       selfSay('Sorry You Cant Do this saga.')	

else		
				if doPlayerAddItem(cid,2673,1) then
				
					travel(cid, 166, 46, 14)
					selfSay('Take This!')
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
