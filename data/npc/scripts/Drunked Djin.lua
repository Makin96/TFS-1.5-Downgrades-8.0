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
if getPlayerStorageValue(cid,1020) == 1 then
selfSay('Do You want visit my castle?')
focus = cid
talk_start = os.clock()
else
selfSay('Hicks. Hello my friend. I knew the secret... but ... but I cant tell ya.')
focus = cid
talk_start = os.clock()
end

elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

  	elseif focus == cid then
		talk_start = os.clock()


if msgcontains(msg, 'secret') then
if getPlayerStorageValue(cid,1020) == 1 then
selfSay('Yes! I will hicks... tell you everything now, do you want?')
else
selfSay('I will not tell you about this secret place! Hicks... ouch I told you its place? I will not tell you... Hiks... anything more.')
end


elseif msgcontains(msg, 'more') then
selfSay('Hiks... Hiks... I need cask of wine ... Hicks... What are you looking at?! Get out of here! Hicks...')




elseif msgcontains(msg, 'cask of wine') then
if doPlayerRemoveItem(cid,2015,1) == 0 then
selfSay('Sorry you Dont have Cask of Wine.')	
else		
setPlayerStorageValue(cid,1020,1)
selfSay('Woah! Hicks... you got it?! Please give it to me!')
focus = 0
talk_start = 0
end

			
elseif msgcontains(msg, 'yes') then
if getPlayerStorageValue(cid,1020) == 1 then
travel(cid, 119, 291, 4)
selfSay('You must visit my castle.')
focus = 0
talk_start = 0
else
selfSay('Hicks')
focus = 0
talk_start = 0
end


		elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
			selfSay('Hicks')
			focus = 0
			talk_start = 0
		end
	end
end

function onThink()
	doNpcSetCreatureFocus(focus)
  	if (os.clock() - talk_start) > 45 then
  		if focus > 0 then
  			selfSay('Hicks.')
  		end
  			focus = 0
  	end
 	if focus ~= 0 then
 		if getDistanceToCreature(focus) > 5 then
 			selfSay('Hicks.')
 			focus = 0
 		end
 	end
end
