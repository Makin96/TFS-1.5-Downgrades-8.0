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
  		selfSay('Hello, ' .. getCreatureName(cid) .. '! I buy all boots what you can see here.')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

		if msgcontains(msg, 'saiyan boots') then
			sell(cid,2195,getCount(msg),1000)

		elseif msgcontains(msg, 'human boots') then
			sell(cid,3982,getCount(msg),500)

		elseif msgcontains(msg, 'boots') then
			sell(cid,2644,getCount(msg),1000)

		elseif msgcontains(msg, 'brolly boots') then
			sell(cid,2642,getCount(msg),2000)

		elseif msgcontains(msg, 'c17 boots') then
			sell(cid,2645,getCount(msg),2500)
		

		elseif msgcontains(msg, 'future trunks boots') then
			sell(cid,2641,getCount(msg),3000)

		elseif msgcontains(msg, 'super c17 boots') then
			sell(cid,2358,getCount(msg),4000)

		elseif msgcontains(msg, 'bardock boots') then
			sell(cid,2643,getCount(msg),5000)

		elseif msgcontains(msg, 'majin boots') then
			sell(cid,2646,getCount(msg),10000)

		elseif msgcontains(msg, 'goku boots') then
			sell(cid,7457,getCount(msg),100000)

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
