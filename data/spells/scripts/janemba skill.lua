local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 86)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 27)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -2.0, 0, -2.5, 0)


function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end