local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_GREEN)

local condition = createConditionObject(CONDITION_OUTFIT)
local condition2 = createConditionObject(CONDITION_PARALYZE)
setConditionParam(condition, CONDITION_PARAM_TICKS, 20000)
setConditionParam(condition, CONDITION_PARAM_SPEED, -200)
addOutfitCondition(condition, 0, 13, 0, 0, 0, 0)
setCombatCondition(combat, condition)

local area = createCombatArea( { {0, 0, 0}, {0, 3, 0}, {0, 0, 0} } )
setCombatArea(combat, area)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end