local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 4)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 30)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -3.5, 0, -4.0, 0)


function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end