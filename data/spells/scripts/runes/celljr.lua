local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 0)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 20)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -5.8, -0, -6.1, -0)

function onCastSpell(cid, var)
	doCombat(cid, combat, var)
end
