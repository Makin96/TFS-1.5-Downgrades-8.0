local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 3)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 31)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -8.0, 0, -8.0, 0)


function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end