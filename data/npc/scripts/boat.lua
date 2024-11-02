local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

function onCreatureAppear(cid)            npcHandler:onCreatureAppear(cid)            end
function onCreatureDisappear(cid)        npcHandler:onCreatureDisappear(cid)            end
function onCreatureSay(cid, type, msg)        npcHandler:onCreatureSay(cid, type, msg)        end
function onThink()                npcHandler:onThink()                    end

-- Travel

local travelNode = keywordHandler:addKeyword({'small city'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 54,y = 185,z = 7} })
local travelNode = keywordHandler:addKeyword({'small'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 54,y = 185,z = 7} })

local travelNode = keywordHandler:addKeyword({'big city'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 117,y = 101,z = 7} })
local travelNode = keywordHandler:addKeyword({'big'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 117,y = 101,z = 7} })

local travelNode = keywordHandler:addKeyword({'assassin tower'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 254,y = 393,z = 7} })
local travelNode = keywordHandler:addKeyword({'assassin'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 254,y = 393,z = 7} })
local travelNode = keywordHandler:addKeyword({'tower'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 254,y = 393,z = 7} })

local travelNode = keywordHandler:addKeyword({'west island'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 112,y = 39,z = 7} })
local travelNode = keywordHandler:addKeyword({'west'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 112,y = 39,z = 7} })

local travelNode = keywordHandler:addKeyword({'hope city'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 419,y = 913,z = 7} })
local travelNode = keywordHandler:addKeyword({'hope'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 419,y = 913,z = 7} })

local travelNode = keywordHandler:addKeyword({'east island'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 82,y = 39,z = 7} })
local travelNode = keywordHandler:addKeyword({'east'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 82,y = 39,z = 7} })

local travelNode = keywordHandler:addKeyword({'swamp city'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 660,y = 727,z = 7} })
local travelNode = keywordHandler:addKeyword({'swamp'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 660,y = 727,z = 7} })

local travelNode = keywordHandler:addKeyword({'ice city'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 316,y = 179,z = 7} })
local travelNode = keywordHandler:addKeyword({'ice'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 316,y = 179,z = 7} })

local travelNode = keywordHandler:addKeyword({'frozen city'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 477,y = 642,z = 7} })
local travelNode = keywordHandler:addKeyword({'frozen'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 477,y = 642,z = 7} })

local travelNode = keywordHandler:addKeyword({'broken city'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 100,y = 343,z = 7} })
local travelNode = keywordHandler:addKeyword({'broken'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 100,y = 343,z = 7} })

local travelNode = keywordHandler:addKeyword({'tsu island'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 488,y = 420,z = 10} })
local travelNode = keywordHandler:addKeyword({'tsu'}, StdModule.travel, {npcHandler = npcHandler, premium = false, level = 0, cost = 0, destination = {x = 488,y = 420,z = 10} })


---(cid, 99, 189, 7)

	 
	npcHandler:addModule(FocusModule:new())
