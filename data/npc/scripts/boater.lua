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
		if getPlayerStorageValue(cid, 6004) == 2 then
			if getPlayerItemCount(cid,5919) < 1 then
				talkState[talkUser] = 1
				selfSay('You have no item.', cid)
		else
				doPlayerRemoveItem(cid,5919,1)
				setPlayerStorageValue(cid, 6004, 3)
				selfSay('Thanks I gived you pass', cid)
				talkState[talkUser] = 0
		end
		
					elseif getPlayerStorageValue(cid, 6004) <= 4 then
						talkState[talkUser] = 1
						selfSay('You have done quest.', cid)
    end
	
end
    return true
end

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())  


	






