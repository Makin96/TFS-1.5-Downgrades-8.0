local combat1 = createCombatObject()
setCombatParam(combat1, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat1, COMBAT_PARAM_EFFECT, 10)
setCombatParam(combat1, COMBAT_PARAM_DISTANCEEFFECT, 46)
setCombatFormula(combat1, COMBAT_FORMULA_LEVELMAGIC, -1.2, 0, -1.3, 0)

local combat2 = createCombatObject()
setCombatParam(combat2, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat2, COMBAT_PARAM_EFFECT, 10)
setCombatParam(combat2, COMBAT_PARAM_DISTANCEEFFECT, 46)
setCombatFormula(combat2, COMBAT_FORMULA_LEVELMAGIC, -1.2, 0, -1.3, 0)

local combat3 = createCombatObject()
setCombatParam(combat3, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat3, COMBAT_PARAM_EFFECT, 10)
setCombatParam(combat3, COMBAT_PARAM_DISTANCEEFFECT, 46)
setCombatFormula(combat3, COMBAT_FORMULA_LEVELMAGIC, -1.2, 0, -1.3, 0)

local combat4 = createCombatObject()
setCombatParam(combat4, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat4, COMBAT_PARAM_EFFECT, 10)
setCombatParam(combat4, COMBAT_PARAM_DISTANCEEFFECT, 46)
setCombatFormula(combat4, COMBAT_FORMULA_LEVELMAGIC, -1.2, 0, -1.3, 0)

local combat5 = createCombatObject()
setCombatParam(combat5, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat5, COMBAT_PARAM_EFFECT, 10)
setCombatParam(combat5, COMBAT_PARAM_DISTANCEEFFECT, 46)
setCombatFormula(combat5, COMBAT_FORMULA_LEVELMAGIC, -1.2, 0, -1.3, 0)

local combat6 = createCombatObject()
setCombatParam(combat6, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat6, COMBAT_PARAM_EFFECT, 10)
setCombatParam(combat6, COMBAT_PARAM_DISTANCEEFFECT, 46)
setCombatFormula(combat6, COMBAT_FORMULA_LEVELMAGIC, -1.2, 0, -1.3, 0)

local combat7 = createCombatObject()
setCombatParam(combat7, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat7, COMBAT_PARAM_EFFECT, 10)
setCombatParam(combat7, COMBAT_PARAM_DISTANCEEFFECT, 46)
setCombatFormula(combat7, COMBAT_FORMULA_LEVELMAGIC, -1.2, 0, -1.3, 0)

local combat8 = createCombatObject()
setCombatParam(combat8, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat8, COMBAT_PARAM_EFFECT, 10)
setCombatParam(combat8, COMBAT_PARAM_DISTANCEEFFECT, 46)
setCombatFormula(combat8, COMBAT_FORMULA_LEVELMAGIC, -1.2, 0, -1.3, 0)

local combat9 = createCombatObject()
setCombatParam(combat9, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat9, COMBAT_PARAM_EFFECT, 10)
setCombatParam(combat9, COMBAT_PARAM_DISTANCEEFFECT, 46)
setCombatFormula(combat9, COMBAT_FORMULA_LEVELMAGIC, -1.2, 0, -1.3, 0)


local combat10 = createCombatObject()
setCombatParam(combat10, COMBAT_PARAM_TYPE, COMBAT_PHYSICALDAMAGE)
setCombatParam(combat10, COMBAT_PARAM_EFFECT, 10)
setCombatParam(combat10, COMBAT_PARAM_DISTANCEEFFECT, 46)
setCombatFormula(combat10, COMBAT_FORMULA_LEVELMAGIC, -1.2, 0, -1.3, 0)

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

local function onCastSpell6(parameters)
    doCombat(parameters.cid, parameters.combat6, parameters.var)
end

local function onCastSpell7(parameters)
    doCombat(parameters.cid, parameters.combat7, parameters.var)
end

local function onCastSpell8(parameters)
      doCombat(parameters.cid, parameters.combat8, parameters.var)
end

local function onCastSpell9(parameters)
    doCombat(parameters.cid, parameters.combat9, parameters.var)
end

local function onCastSpell10(parameters)
      doCombat(parameters.cid, parameters.combat10, parameters.var)
end


function onCastSpell(cid, var)
local parameters = { cid = cid, var = var, combat1 = combat1, combat2 = combat2, combat3 = combat3, combat4 = combat4, combat5 = combat5, combat6 = combat6, combat7 = combat7, combat8 = combat8, combat9 = combat9, combat10 = combat10 }
addEvent(onCastSpell1, 0, parameters)    
addEvent(onCastSpell2, 300, parameters)       
addEvent(onCastSpell3, 600, parameters)       
addEvent(onCastSpell4, 900, parameters)       
addEvent(onCastSpell5, 1200, parameters)    
addEvent(onCastSpell6, 1500, parameters)       
addEvent(onCastSpell7, 1800, parameters)       
addEvent(onCastSpell8, 2100, parameters)  
addEvent(onCastSpell9, 2400, parameters)    
addEvent(onCastSpell10, 2700, parameters)       

end






