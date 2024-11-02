local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 42)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -6.0, 0, -6.5, 0)

function onCastSpell(cid, var)
	return doCombat(cid, combat, var)
end
