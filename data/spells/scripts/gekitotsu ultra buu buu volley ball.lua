local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 46)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 32)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -10.0, 0, -10.5, 0)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
