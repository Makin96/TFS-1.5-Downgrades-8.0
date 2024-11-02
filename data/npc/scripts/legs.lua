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
  		selfSay('Hello, ' .. getCreatureName(cid) .. '! I buy all legs what you can see here.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'leather trousers') then
			sell(cid,2649,getCount(msg),200)

		elseif msgcontains(msg, 'green scale legs') then
			sell(cid,2495,getCount(msg),400)

		elseif msgcontains(msg, 'vegeta legs') then
			sell(cid,2647,getCount(msg),800)

		elseif msgcontains(msg, 'c17 legs') then
			sell(cid,2477,getCount(msg),1000)

		elseif msgcontains(msg, 'bardock legs') then
			sell(cid,2460,getCount(msg),1500)
		
		elseif msgcontains(msg, 'gohan legs') then
			sell(cid,2478,getCount(msg),2000)

		elseif msgcontains(msg, 'soldier legs') then
			sell(cid,2468,getCount(msg),1000)
					
		elseif msgcontains(msg, 'piccolo legs') then
			sell(cid,2488,getCount(msg),2500)
		
		elseif msgcontains(msg, 'goku legs') then
			sell(cid,2504,getCount(msg),5000)

		elseif msgcontains(msg, 'brolly legs') then
			sell(cid,2470,getCount(msg),10000)


		elseif msgcontains(msg, 'ussj legs') then
			sell(cid,2648,getCount(msg),20000)
					
		elseif msgcontains(msg, 'goku ssj5 legs') then
			sell(cid,2469,getCount(msg),100000)
		
		

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
