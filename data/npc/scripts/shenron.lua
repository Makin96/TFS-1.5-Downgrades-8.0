local focus = 0
local talk_start = 0
local target = 0
local following = false
local attacking = false



function onCreatureAppear(creature)

end


function onCreatureDisappear(cid, pos)
  	if focus == cid then
          selfSay('Good bye then.')
          focus = 0
          talk_start = 0
  	end
end


function onCreatureTurn(creature)

end


function msgcontains(txt, str)
 	return (string.find(txt, str) and not string.find(txt, '(%w+)' .. str) and not string.find(txt, str .. '(%w+)'))
end


function onCreatureSay(cid, type, msg)
  	msg = string.lower(msg)

  	if (msgcontains(msg, 'hi') and getPlayerStorageValue(cid, 6010) == 1 and focus == 0) and getDistanceToCreature(cid) < 4 then
  		selfSay('Hello, '..getCreatureName(cid)..'! Tell me you "wish".')
  		focus = cid
  		talk_start = os.clock()

	elseif focus == cid then
		talk_start = os.clock()



                if msgcontains(msg, 'wish') then
                         selfSay('What do you need "10 levels", 10k "hp" , 10k "ki points" , some "ki levels", "skills" or "1000k zeni" ?')


                elseif msgcontains(msg, 'levels') and getPlayerStorageValue(cid, 6000) == -1 then

                         addLevel(cid,1)
                         addLevel(cid,1)
                         addLevel(cid,1)
                         addLevel(cid,1)
                         addLevel(cid,1)
                         addLevel(cid,1)
                         addLevel(cid,1)
                         addLevel(cid,1)
                         addLevel(cid,1)
                         addLevel(cid,1)


selfSay('Thanks for you wish.')
executeCommand(cid, "/remove", "Shenron")
setGlobalStorageValue(6010, -1)
setGlobalStorageValue(1999, -1)
setPlayerStorageValue(cid, 6000, 1)

                elseif msgcontains(msg, 'levels') and getPlayerStorageValue(cid, 6000) == 1 then
                         selfSay("I can't do this wish for you.")



                elseif msgcontains(msg, 'ki levels') and getPlayerStorageValue(cid, 6001) == -1 then
                doPlayerSpalonaMana(cid, 1000000)
selfSay('Thanks for you wish.')
executeCommand(cid, "/remove", "Shenron")
setGlobalStorageValue(6010, -1)
setGlobalStorageValue(1999, -1)
setPlayerStorageValue(cid, 6001, 1)

                elseif msgcontains(msg, 'ki levels') and getPlayerStorageValue(cid, 6001) == 1 then
                         selfSay("I can't do this wish for you.")


                elseif msgcontains(msg, 'hp') and getPlayerStorageValue(cid, 6002) == -1 then
                doPlayerAddHealthMax(cid, 3000)
selfSay('Thanks for you wish.')
executeCommand(cid, "/remove", "Shenron")
setGlobalStorageValue(6010, -1)
setGlobalStorageValue(1999, -1)
setPlayerStorageValue(cid, 6002, 1)


                elseif msgcontains(msg, 'hp') and getPlayerStorageValue(cid, 6002) == 1 then
                         selfSay("I can't do this wish for you.")



                elseif msgcontains(msg, 'ki points') and getPlayerStorageValue(cid, 6003) == -1 then
                doPlayerAddHealthMax(cid, 2000)
selfSay('Thanks for you wish.')
executeCommand(cid, "/remove", "Shenron")
setGlobalStorageValue(6010, -1)
setGlobalStorageValue(1999, -1)
setPlayerStorageValue(cid, 6003, 1)


                elseif msgcontains(msg, 'ki points') and getPlayerStorageValue(cid, 6003) == 1 then
                         selfSay("I can't do this wish for you.")

                elseif msgcontains(msg, 'skills') then
                         selfSay('I can give for you "5 speed", "5 waepon fighting", "5 sword" , "5 defense" , "5 strenght" and "5 ki blasting".')

                elseif msgcontains(msg, 'speed') and getPlayerStorageValue(cid, 6004) == -1 then
              doPlayerAddSkillTry(cid,0,5000000)
              doPlayerAddSkillTry(cid,0,5000000)
              doPlayerAddSkillTry(cid,0,5000000)
              doPlayerAddSkillTry(cid,0,5000000)
              doPlayerAddSkillTry(cid,0,5000000)


selfSay('Thanks for you wish.')
executeCommand(cid, "/remove", "Shenron")
setGlobalStorageValue(6010, -1)
setGlobalStorageValue(1999, -1)
setPlayerStorageValue(cid, 6004, 1)


                elseif msgcontains(msg, 'speed') and getPlayerStorageValue(cid, 6004) == 1 then
                         selfSay("I can't do this wish for you.")

                elseif msgcontains(msg, 'waepon fighting') and getPlayerStorageValue(cid, 6005) == -1 then
              doPlayerAddSkillTry(cid,1,5000000)
              doPlayerAddSkillTry(cid,1,5000000)
              doPlayerAddSkillTry(cid,1,5000000)
              doPlayerAddSkillTry(cid,1,5000000)
              doPlayerAddSkillTry(cid,1,5000000)


selfSay('Thanks for you wish.')
executeCommand(cid, "/remove", "Shenron")
setGlobalStorageValue(6010, -1)
setGlobalStorageValue(1999, -1)
setPlayerStorageValue(cid, 6005, 1)


                elseif msgcontains(msg, 'waepon fighting') and getPlayerStorageValue(cid, 6005) == 1 then
                         selfSay("I can't do this wish for you.")



                elseif msgcontains(msg, 'defense') and getPlayerStorageValue(cid, 6006) == -1 then
              doPlayerAddSkillTry(cid,5,5000000)
              doPlayerAddSkillTry(cid,5,5000000)
              doPlayerAddSkillTry(cid,5,5000000)
              doPlayerAddSkillTry(cid,5,5000000)
              doPlayerAddSkillTry(cid,5,5000000)


selfSay('Thanks for you wish.')
executeCommand(cid, "/remove", "Shenron")
setGlobalStorageValue(6010, -1)
setGlobalStorageValue(1999, -1)
setPlayerStorageValue(cid, 6006, 1)


                elseif msgcontains(msg, 'defense') and getPlayerStorageValue(cid, 6006) == 1 then
                         selfSay("I can't do this wish for you.")


                elseif msgcontains(msg, 'sword') and getPlayerStorageValue(cid, 6007) == -1 then
              doPlayerAddSkillTry(cid,2,5000000)
              doPlayerAddSkillTry(cid,2,5000000)
              doPlayerAddSkillTry(cid,2,5000000)
              doPlayerAddSkillTry(cid,2,5000000)
              doPlayerAddSkillTry(cid,2,5000000)


selfSay('Thanks for you wish.')
executeCommand(cid, "/remove", "Shenron")
setGlobalStorageValue(6010, -1)
setGlobalStorageValue(1999, -1)
setPlayerStorageValue(cid, 6007, 1)


                elseif msgcontains(msg, 'sword') and getPlayerStorageValue(cid, 6007) == 1 then
                         selfSay("I can't do this wish for you.")


                elseif msgcontains(msg, 'ki blasting') and getPlayerStorageValue(cid, 6008) == -1 then
              doPlayerAddSkillTry(cid,4,5000000)
              doPlayerAddSkillTry(cid,4,5000000)
              doPlayerAddSkillTry(cid,4,5000000)
              doPlayerAddSkillTry(cid,4,5000000)
              doPlayerAddSkillTry(cid,4,5000000)


selfSay('Thanks for you wish.')
executeCommand(cid, "/remove", "Shenron")
setGlobalStorageValue(6010, -1)
setGlobalStorageValue(1999, -1)
setPlayerStorageValue(cid, 6008, 1)


                elseif msgcontains(msg, 'ki blasting') and getPlayerStorageValue(cid, 6008) == 1 then
                         selfSay("I can't do this wish for you.")

                elseif msgcontains(msg, 'strenght') and getPlayerStorageValue(cid, 6009) == -1 then
              doPlayerAddSkillTry(cid,3,5000000)
              doPlayerAddSkillTry(cid,3,5000000)
              doPlayerAddSkillTry(cid,3,5000000)
              doPlayerAddSkillTry(cid,3,5000000)
              doPlayerAddSkillTry(cid,3,5000000)


selfSay('Thanks for you wish.')
executeCommand(cid, "/remove", "Shenron")
setGlobalStorageValue(6010, -1)
setGlobalStorageValue(1999, -1)
setPlayerStorageValue(cid, 6009, 1)


                elseif msgcontains(msg, 'strenght') and getPlayerStorageValue(cid, 6009) == 1 then
                         selfSay("I can't do this wish for you.")




                elseif msgcontains(msg, 'zeni') then
doPlayerAddItem(cid,2160,100)


selfSay('Thanks for you wish.')
executeCommand(cid, "/remove", "Shenron")
setGlobalStorageValue(6010, -1)
setGlobalStorageValue(1999, -1)




		elseif msgcontains(msg, 'bye') and getDistanceToCreature(cid) < 4 then
			selfSay('Good bye, ' .. getCreatureName(cid) .. '!')
			focus = 0
			talk_start = 0
		end
	end
end



function onCreatureChangeOutfit(creature)

end



  	if (os.clock() - talk_start) > 30 then
  		if focus > 0 then
  			selfSay('Next Please...')
  		end
  			focus = 0
  	end
 	if focus ~= 0 then
 		if getDistanceToCreature(focus) > 5 then
 			selfSay('Good bye then.')
 			focus = 0
 		end
 	end



