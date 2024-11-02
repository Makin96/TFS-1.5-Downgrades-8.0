local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 3)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 37)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -7.0, 0, -7.5, 0)


function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end