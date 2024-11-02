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
		if getPlayerStorageValue(cid, 8000) == 31 then
			selfSay('Take Four star Dragon Ball', cid)
			setPlayerStorageValue(cid, 8000, 32)
			doTeleportThing(cid, {x=139, y=56, z=14})
			doPlayerAddItem(cid,5900,1)
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





