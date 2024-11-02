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
		if getPlayerStorageValue(cid, 1005) == -1 then
			if getPlayerItemCount(cid,2087) < 1 then
				talkState[talkUser] = 1
				selfSay('You have no item.', cid)
		else
				doPlayerRemoveItem(cid,2087,1)
				setPlayerStorageValue(cid, 1005, 2)
				doPlayerAddItem(cid,7431,1)
				selfSay('Take this.', cid)
				talkState[talkUser] = 0
		end
		
					elseif getPlayerStorageValue(cid, 1005) <= 3 then
						talkState[talkUser] = 1
						selfSay('You have done quest.', cid)
    end
	
end
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())  


	






