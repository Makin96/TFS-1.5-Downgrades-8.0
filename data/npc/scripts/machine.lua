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



  	if (msgcontains(msg, 'hi') and (focus == 0)) and getDistanceToCreature(cid) < 4 then
  		selfSay('Hello, '..getCreatureName(cid)..'! How much level you "set" in gravity?, you can "off" gravity and "check" you set level.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()



                if msgcontains(msg, 'off') then

			setMachine(cid, 4442, 0)
                         selfSay('Gravity has been off.')

                elseif msgcontains(msg, 'set') and getPlayerLevel(cid) >= getCount(msg) then
			setMachine(cid, 4442, getCount(msg))
                         selfSay('Gravity was set to '..getCount(msg)..'.')

                elseif msgcontains(msg, 'set') and getPlayerLevel(cid) < getCount(msg) then
                         selfSay('You can max set to '..getPlayerLevel(cid)..'.')

                elseif msgcontains(msg, 'check') then
                         selfSay('Gravity level is set to '..getSetMachine(cid, 4442)..'.')


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