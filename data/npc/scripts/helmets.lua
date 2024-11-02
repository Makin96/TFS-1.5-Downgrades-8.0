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
  		selfSay('Hello, ' .. getCreatureName(cid) .. '! I buy all helmets what you can see here.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'ninja helmet') then
			sell(cid,2459,getCount(msg),100)

		elseif msgcontains(msg, 'green detector') then
			sell(cid,2462,getCount(msg),300)

		elseif msgcontains(msg, 'chibi gohan cap') then
			sell(cid,2343,getCount(msg),500)

		elseif msgcontains(msg, 'soldier helmet') then
			sell(cid,2479,getCount(msg),800)

		elseif msgcontains(msg, 'viking cap') then
			sell(cid,2663,getCount(msg),1000)

		elseif msgcontains(msg, 'red detector') then
			sell(cid,2457,getCount(msg),1500)

		elseif msgcontains(msg, 'pai pai helmet') then
			sell(cid,2480,getCount(msg),1500)

		elseif msgcontains(msg, 'bardock bandana') then
			sell(cid,2471,getCount(msg),2000)

		elseif msgcontains(msg, 'piccolo helmet') then
			sell(cid,2491,getCount(msg),3000)

		elseif msgcontains(msg, 'piccolo cap') then
			sell(cid,2475,getCount(msg),3000)

		elseif msgcontains(msg, 'brolly amulation') then
			sell(cid,2496,getCount(msg),5000)

		elseif msgcontains(msg, 'great saiyan helmet') then
			sell(cid,2493,getCount(msg),10000)

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
