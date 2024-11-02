local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 0)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 46)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -0.6, 0, -1.1, 0)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 0)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 46)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -0.6, 0, -1.1, 0)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 0)
setCombatParam(combat3, COMBAT_PARAM_DISTANCEEFFECT, 46)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -0.6, 0, -1.1, 0)

local combat4 = createCombatObject()
setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, 0)
setCombatParam(combat4, COMBAT_PARAM_DISTANCEEFFECT, 46)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC, -0.6, 0, -1.1, 0)

local combat5 = createCombatObject()
setCombatParam(combat5, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat5, COMBAT_PARAM_EFFECT, 0)
setCombatParam(combat5, COMBAT_PARAM_DISTANCEEFFECT, 46)
setCombatFormula(combat5, COMBAT_FORMULA_LEVELMAGIC, -0.6, 0, -1.1, 0)

local function onCastSpell1(parameters)
    doCombat(parameters.cid, parameters.combat1, parameters.var)
end

local function onCastSpell2(parameters)
    doCombat(parameters.cid, parameters.combat2, parameters.var)
end

local function onCastSpell3(parameters)
    doCombat(parameters.cid, parameters.combat3, parameters.var)
end

local function onCastSpell4(parameters)
      doCombat(parameters.cid, parameters.combat4, parameters.var)
end

local function onCastSpell5(parameters)
    doCombat(parameters.cid, parameters.combat5, parameters.var)
end


function onCastSpell(cid, var)
local parameters = { cid = cid, var = var, combat1 = combat1, combat2 = combat2, combat3 = combat3, combat4 = combat4, combat5 = combat5 }
addEvent(onCastSpell1, 0, parameters)    
addEvent(onCastSpell2, 300, parameters)       
addEvent(onCastSpell3, 600, parameters)       
addEvent(onCastSpell4, 900, parameters)       
addEvent(onCastSpell5, 1200, parameters)    

end






