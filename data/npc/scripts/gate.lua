local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)            end
function onCreatureSay(cid, type, msg)        npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                npcHandler:onThink()                    end

-- Travel

local travelNode = keywordHandler:addKeyword({'earth'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 78,y = 488,z = 8} })
local travelNode = keywordHandler:addKeyword({'m2'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 78,y = 514,z = 8} })
local travelNode = keywordHandler:addKeyword({'tsufur'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 105,y = 488,z = 8} })
local travelNode = keywordHandler:addKeyword({'zelta'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 105,y = 515,z = 8} })
local travelNode = keywordHandler:addKeyword({'vegeta'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 141,y = 489,z = 8} })
local travelNode = keywordHandler:addKeyword({'namek'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 141,y = 515,z = 8} })
local travelNode = keywordHandler:addKeyword({'gardia'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 148,y = 547,z = 8} })
local travelNode = keywordHandler:addKeyword({'lude'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 191,y = 498,z = 8} })
local travelNode = keywordHandler:addKeyword({'premia'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 191,y = 526,z = 8} })

---(cid, 99, 189, 7)

	 
	npcHandler:addModule(FocusModule:new())
