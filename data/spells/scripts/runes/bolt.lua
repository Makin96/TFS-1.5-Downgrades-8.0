local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 3)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -1.0, 0, -1.5, 0)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
