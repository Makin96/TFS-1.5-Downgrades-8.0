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
		if getPlayerAccess(cid) >= 1 then
			selfSay('Hello ' .. getCreatureName(cid) .. '! I can take you to Tropico or Atlantida or back you to normal island (100 zeni everywhere)')
			focus = cid
			talk_start = os.clock()
		else
			selfSay('Sorry, only premium players can travel by boat.')
			focus = 0
			talk_start = 0
		end

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

  	elseif focus == cid then
		talk_start = os.clock()

			if msgcontains(msg, 'tropico') then
				if pay(cid,100) then
					travel(cid, 96, 683, 7)
					selfSay('Let\'s go!')
					focus = 0
					talk_start = 0
				else
					selfSay('Sorry, you don\'t have enough money.')
				end

			elseif msgcontains(msg, 'atlantida') then
				if pay(cid,100) then
					travel(cid, 123, 833, 7)
					selfSay('Let\'s go!')
					focus = 0
					talk_start = 0
				else
					selfSay('Sorry, you don\'t have enough money.')
				end



			elseif msgcontains(msg, 'back') then
				if pay(cid,100) then
					travel(cid, 84, 510, 7)
					selfSay('Let\'s go!')
					focus = 0
					talk_start = 0
				else
					selfSay('Sorry, you don\'t have enough money.')
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
