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
  		selfSay('Hello, ' .. getCreatureName(cid) .. '! I buy all armors what you can see here.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'black coat') then
			sell(cid,2651,getCount(msg),50)

		elseif msgcontains(msg, 'elven jacket') then
			sell(cid,2505,getCount(msg),100)

		elseif msgcontains(msg, 'sport jacket') then
			sell(cid,2534,getCount(msg),500)

		elseif msgcontains(msg, 'tunic') then
			sell(cid,2467,getCount(msg),600)

		
		elseif msgcontains(msg, 'goten armor') then
			sell(cid,2654,getCount(msg),3000)

		
		elseif msgcontains(msg, 'black power armor') then
			sell(cid,2464,getCount(msg),1000)

		elseif msgcontains(msg, 'red power armor') then
			sell(cid,2500,getCount(msg),1000)

		elseif msgcontains(msg, 'saiyan armor') then
			sell(cid,2466,getCount(msg),1500)

		
		elseif msgcontains(msg, 'raditz armor') then
			sell(cid,2486,getCount(msg),2000)


		elseif msgcontains(msg, 'piccolo armor') then
			sell(cid,2489,getCount(msg),2000)

		elseif msgcontains(msg, 'c16 armor') then
			sell(cid,2664,getCount(msg),2500)

		elseif msgcontains(msg, 'c17 armor') then
			sell(cid,2476,getCount(msg),3000)

		
		elseif msgcontains(msg, 'c18 armor') then
			sell(cid,2508,getCount(msg),3000)

		elseif msgcontains(msg, 'bardock armor') then
			sell(cid,2658,getCount(msg),2500)

		
		elseif msgcontains(msg, 'red scale armor') then
			sell(cid,2494,getCount(msg),3000)

		elseif msgcontains(msg, 'piccolo robe') then
			sell(cid,2656,getCount(msg),3000)

		
		elseif msgcontains(msg, 'ultra armor') then
			sell(cid,2463,getCount(msg),10000)

		elseif msgcontains(msg, 'goku armor') then
			sell(cid,2472,getCount(msg),30000)

		
		elseif msgcontains(msg, 'future trunks shirt') then
			sell(cid,3968,getCount(msg),30000)

		elseif msgcontains(msg, 'saiyajin armor') then
			sell(cid,2483,getCount(msg),50000)

		
		elseif msgcontains(msg, 'frozen armor') then
			sell(cid,2657,getCount(msg),50000)

		elseif msgcontains(msg, 'shin jacket') then
			sell(cid,7463,getCount(msg),60000)

		elseif msgcontains(msg, 'shin armor') then
			sell(cid,2653,getCount(msg),80000)

		elseif msgcontains(msg, 'vilage armor') then
			sell(cid,2513,getCount(msg),80000)

		elseif msgcontains(msg, 'super c17 armor') then
			sell(cid,2655,getCount(msg),100000)

		elseif msgcontains(msg, 'fusion armor') then
			sell(cid,2510,getCount(msg),300000)

				

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
