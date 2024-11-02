local combat = createCombatObject()
setCombatParam(combat, COMBAT_PARAM_TYPE, COMBAT_HEALING)
setCombatParam(combat, COMBAT_PARAM_EFFECT, 85)
setCombatParam(combat, COMBAT_PARAM_AGGRESSIVE, 0)
setCombatParam(combat, COMBAT_PARAM_DISPEL, CONDITION_PARALYZE)
setCombatFormula(combat, COMBAT_FORMULA_LEVELMAGIC, 0.32, 0, 0.50, 0)

local arr = {
{0, 0, 0},
{0, 0, 0},
{0, 0, 0},
{0, 0, 0},
{0, 3, 0}
}

local area = createCombatArea(arr)
setCombatArea(combat, area)

function onCastSpell1(parameters)
      doCombat(parameters.cid, parameters.combat, parameters.var)
end

function onCastSpell(cid, var) 
local parameters = { cid = cid, var = var, combat = combat }
addEvent(onCastSpell1, 2000, parameters) 
addEvent(onCastSpell1, 4000, parameters) 
addEvent(onCastSpell1, 6000, parameters)
addEvent(onCastSpell1, 8000, parameters) 
addEvent(onCastSpell1, 12000, parameters) 
addEvent(onCastSpell1, 14000, parameters) 
addEvent(onCastSpell1, 16000, parameters)
addEvent(onCastSpell1, 18000, parameters) 
addEvent(onCastSpell1, 20000, parameters) 
addEvent(onCastSpell1, 22000, parameters) 
addEvent(onCastSpell1, 24000, parameters)
addEvent(onCastSpell1, 26000, parameters) 
addEvent(onCastSpell1, 28000, parameters)
addEvent(onCastSpell1, 30000, parameters) 
end