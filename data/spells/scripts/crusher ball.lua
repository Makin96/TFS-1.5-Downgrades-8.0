local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 4)
setCombatParam(combat, COMBAT_PARAM_DISTANCEEFFECT, 36)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, -6.5, 0, -7.2, 0)


function onCastSpell(cid, var)
return doCombat(cid, combat, var)
end



