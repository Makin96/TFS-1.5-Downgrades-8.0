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
  		selfSay('Hello, ' .. getCreatureName(cid) .. '! I sell potions 5$, ki potions 10$, strong ki potions 30$, mega power potions 20$ and ultimate potions 50$ .')
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

		

		if msgcontains(msg, 'potion') then
			buy(cid,2686,getCount(msg),500)

		elseif msgcontains(msg, 'ki') then
			buy(cid,2689,getCount(msg),1000)

		elseif msgcontains(msg, 'strong') then
			buy(cid,7440,getCount(msg),3000)

		elseif msgcontains(msg, 'mega') then
			buy(cid,7443,getCount(msg),2000)
		
		elseif msgcontains(msg, 'ultimate') then
			buy(cid,6558,getCount(msg),5000)
	


		elseif msgcontains(msg, 'red bands') then
			buy(cid,2214,getCount(msg),1000)

		elseif msgcontains(msg, 'two tones bands') then
			buy(cid,2166,getCount(msg),1000)

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
