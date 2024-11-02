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
		if getPlayerStorageValue(cid, 8000) == 33 then
			selfSay('Take Six star Dragon Ball', cid)
			setPlayerStorageValue(cid, 8000, 34)
			doTeleportThing(cid, {x=945, y=447, z=7})
			doPlayerAddItem(cid,5876,1)
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





