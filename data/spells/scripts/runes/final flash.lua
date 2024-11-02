local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 37)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -4.5, 0, -5.0, 0)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
