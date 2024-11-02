local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 3)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 33)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -9.5, 0, -9.6, 0)


function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end