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

  	if msgcontains(msg, 'hi') then

selfSay('Do you have the dragon balls?.')	
  		focus = cid
  		talk_start = os.clock()

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! I talk to you in a minute.')

	elseif focus == cid then
		talk_start = os.clock()

if msgcontains(msg, 'yes') then
if getPlayerStorageValue(cid,8000) == 37 then
if doPlayerRemoveItem(cid,2638,1) == 0 then
selfSay('Sory You dont have that item.')	
else
setPlayerStorageValue(cid,8000,38) 
selfSay('Thanks')
end





elseif getPlayerStorageValue(cid,8000) == 38 then
if doPlayerRemoveItem(cid,2639,1) == 0 then
selfSay('Sory You dont have that item.')	
else
setPlayerStorageValue(cid,8000,39) 
selfSay('Thanks')

end





elseif getPlayerStorageValue(cid,8000) == 39 then
if doPlayerRemoveItem(cid,5896,1) == 0 then
selfSay('Sory You dont have that item.')	
else
setPlayerStorageValue(cid,8000,40) 
selfSay('Thanks')
end



elseif getPlayerStorageValue(cid,8000) == 40 then
if doPlayerRemoveItem(cid,5900,1) == 0 then
selfSay('Sory You dont have that item.')	
else
setPlayerStorageValue(cid,8000,41) 
selfSay('Thanks')

end



elseif getPlayerStorageValue(cid,8000) == 41 then
if doPlayerRemoveItem(cid,5898,1) == 0 then
selfSay('Sory You dont have that item.')	
else
setPlayerStorageValue(cid,8000,42) 
selfSay('Thanks')

end






elseif getPlayerStorageValue(cid,8000) == 42 then
if doPlayerRemoveItem(cid,5876,1) == 0 then
selfSay('Sory You dont have that item.')	
else
setPlayerStorageValue(cid,8000,43) 
selfSay('Thanks')

end





elseif getPlayerStorageValue(cid,8000) == 43 then
if doPlayerRemoveItem(cid,5877,1) == 0 then
selfSay('Sory You dont have that item.')	
else
setPlayerStorageValue(cid,8000,44) 
selfSay('Thanks')
end




			elseif getPlayerStorageValue(cid,8000) <= 36 then
			
		selfSay('Sorry You Cant Do this saga.')	
			elseif msgcontains(msg, 'yes') then
                        if getPlayerStorageValue(cid,8000) >= 44 then
                       selfSay('Sorry You Cant Do this saga.')	
end
end


		elseif msgcontains(msg, 'asdasddfdfdfdf') then
			sell(cid,2491,getCount(msg),600)


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
