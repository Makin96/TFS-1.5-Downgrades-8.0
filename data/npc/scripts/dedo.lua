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
		if getPlayerStorageValue(cid, 8000) == 35 then
			 if doPlayerRemoveItem(cid,2638,1) == 0 then
				talkState[talkUser] = 1
				selfSay('You do not have one star dragon ball', cid)
				
		else
				setPlayerStorageValue(cid, 8000, 36)
				selfSay('One star dragon ball', cid)
				talkState[talkUser] = 0			
	end 
			
			
	elseif getPlayerStorageValue(cid, 8000) == 36 then
		if doPlayerRemoveItem(cid,2639,1) == 0 then
			talkState[talkUser] = 1
			selfSay('You do not have two star dragon ball', cid)
			
		else
			setPlayerStorageValue(cid, 8000, 37)
			selfSay('Two star dragon ball', cid)
			talkState[talkUser] = 0			
	end 
	
	elseif getPlayerStorageValue(cid, 8000) == 37 then
		if doPlayerRemoveItem(cid,5896,1) == 0 then
			talkState[talkUser] = 1
			selfSay('You do not have three star dragon ball', cid)
			
		else
			setPlayerStorageValue(cid, 8000, 38)
			selfSay('Three star dragon ball', cid)
			talkState[talkUser] = 0			
	end 
	
	elseif getPlayerStorageValue(cid, 8000) == 38 then
		if doPlayerRemoveItem(cid,5900,1) == 0 then
			talkState[talkUser] = 1
			selfSay('You do not have four star dragon ball', cid)
			
		else
			setPlayerStorageValue(cid, 8000, 39)
			selfSay('Four star dragon ball', cid)
			talkState[talkUser] = 0			
	end 
	
	elseif getPlayerStorageValue(cid, 8000) == 39 then
		if doPlayerRemoveItem(cid,5898,1) == 0 then
			talkState[talkUser] = 1
			selfSay('You do not have five star dragon ball', cid)
			
		else
			setPlayerStorageValue(cid, 8000, 40)
			selfSay('Five star dragon ball', cid)
			talkState[talkUser] = 0			
	end 
	
	elseif getPlayerStorageValue(cid, 8000) == 40 then
		if doPlayerRemoveItem(cid,5876,1) == 0 then
			talkState[talkUser] = 1
			selfSay('You do not have six star dragon ball', cid)
			
		else
			setPlayerStorageValue(cid, 8000, 41)
			selfSay('Six star dragon ball', cid)
			talkState[talkUser] = 0			
	end 
	
	elseif getPlayerStorageValue(cid, 8000) == 41 then
		if doPlayerRemoveItem(cid,5877,1) == 0 then
			talkState[talkUser] = 1
			selfSay('You do not have seven star dragon ball', cid)
			
		else
			setPlayerStorageValue(cid, 8000, 42)
			selfSay('Seven star dragon ball.', cid)
			talkState[talkUser] = 0			
	end 
	
	elseif getPlayerStorageValue(cid, 8000) == 42 then
			talkState[talkUser] = 1
			selfSay('Congratulations, you collected all the balls', cid)
			
	elseif getPlayerStorageValue(cid, 8000) <= 43 then
			talkState[talkUser] = 1
			selfSay('Sorry You Cant Do this saga', cid)
			
	elseif getPlayerStorageValue(cid, 8000) <= 30 then
			talkState[talkUser] = 1
			selfSay('Sorry You Cant Do this saga', cid)

	end

end
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())  




