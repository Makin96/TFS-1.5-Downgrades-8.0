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
          selfSay('Fight with me!!!!!!.')
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
		
			selfSay('Kakarotto')
			focus = cid
			talk_start = os.clock()
		

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Fight with me!!!!!!')

  	elseif focus == cid then
		talk_start = os.clock()

			if msgcontains(msg, 'asdasdasttdasdass') then
                      
				travel(cid, 89, 227, 7)
					selfSay('Take this for save me')
					focus = 0
					talk_start = 0
				

			elseif msgcontains(msg, 'asdasfdasdasdasdasa') then
				if pay(cid,100) then
					travel(cid, 117, 101, 7)
					selfSay('Let\'s go!')
					focus = 0
					talk_start = 0
				else
					selfSay('Sorry, you don\'t have enough money.')
				end

			
				

		elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
			selfSay('HaHaHa')
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
