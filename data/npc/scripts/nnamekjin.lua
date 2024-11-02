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
          selfSay('Hey!.')
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
		
			selfSay('Do you want the Dragon Ball?')
			focus = cid
			talk_start = os.clock()
		

  	elseif msgcontains(msg, 'hi') and (focus ~= cid) and getDistanceToCreature(cid) < 4 then
  		selfSay('Sorry, ' .. getCreatureName(cid) .. '! ????????.')

  	elseif focus == cid then
		talk_start = os.clock()

			
			if msgcontains(msg, 'yes') then
			if getPlayerStorageValue(cid,8000) <= 33 then
			
		selfSay('Sorry You Cant Do this saga.')	
			elseif msgcontains(msg, 'yes') then
                        if getPlayerStorageValue(cid,8000) >= 35 then
                       selfSay('Sorry You Cant Do this saga.')	

else		
				if doPlayerAddItem(cid,5898,1) then
				setPlayerStorageValue(cid,8000,35)
					
					selfSay('Take This!')
					focus = 0
					talk_start = 0

			
end
end
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


local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)
local talkState = {}

function onCreatureAppear(cid)                npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)             npcHandler:onCreatureDisappear(cid)            end
function onCreatureSay(cid, type, msg)            npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                    npcHandler:onThink()                    end

function creatureSayCallback(cid, type, msg)
    if(not npcHandler:isFocused(cid)) then
        return false
    end
    local talkUser = NPCHANDLER_CONVBEHAVIOR == CONVERSATION_DEFAULT and 0 or cid
    
	
	if(msgcontains(msg, 'yes')) then
		if getPlayerStorageValue(cid, 8000) == 32 then
			selfSay('Take Five star Dragon Ball', cid)
			setPlayerStorageValue(cid, 8000, 33)
			doPlayerAddItem(cid,5898,1)
			talkState[talkUser] = 1
		else
			selfSay('You dont have this saga.', cid)
			talkState[talkUser] = 0
		end
    end

    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())  





