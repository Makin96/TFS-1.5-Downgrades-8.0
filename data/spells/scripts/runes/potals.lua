attackType = ATTACK_NONE
    animationEffect = NM_ANI_NONE
    
local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_EFFECT, CONST_ME_MAGIC_RED)



local outfit1 = createConditionObject(CONDITION_OUTFIT)
setConditionParam(outfit1, CONDITION_PARAM_TICKS, 90000)
addOutfitCondition(outfit1, 0, 59, 0, 0, 0, 0)



function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end















