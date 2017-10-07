scope MC initializer Init 
    // Author:  Dangles20
    // Mind control version 0.4 Jass remake 
   
    globals
        // DO NOT TOUCH THESE GLOBALS!
        hashtable mc_hash = InitHashtable()
        group mc_targets = CreateGroup()
        timer mc_time = CreateTimer()
        real array manaCost  
        
    //................................................    
    // Configuration
    // General settings that controls the spells function
    //................................................
        
        
        // Sets the ability to be used for mind control
        integer abilId = 'A000'     
        // Sets the passive ability used as mind control immunity
        integer immuneId = 'A001'               
        // This sets the buff that will be removed once a unit has been reverted.         
        // I've added a boolean setting further down which allows debuffing       
        integer buffId = 'B000'                 
                                                
    
        // Sets the aura ability that adds the buff to the mind controlled unit, I added this because I recommend adding an aura ability like I have that way it cannot be debuffed, or you can just copy mine
        // If you want mind control debuffable then you will have to replace the mind control ability with an ability that places a positive buff on a unit, I recommend unholy frenzy.
        // After replacing the mind control ability you'll have to change the boolean setting further down for adding an aura ability.
        // I've added a few boolean settings further down which disables this option
        integer buffabilId = 'A002'
        
        // Sets the maximum amount of units to be controlled before units start reverting. Set 0 for unlimited 
        integer maxunits = 1    
        // sets the maximum distance of mind control for each unit. Set 0 for unlimited
        real maxdist = 500.0     
        
        
        
        // Set the mode of what happens to the caster if he tries to control an immune unit
        // 1: Cooldown and mana is unaffected 
        // 2: Cooldown is affected, but mana is unaffected
        // 3: Cooldown is unaffected, but mana is affected
        // 4: Cooldown and mana are both effected
        integer immunemode = 1
        
        
        // Sets the order the units revert in once the caster has reached his maximum units amount
        // 0: Cannot take any more units, any units after the maxunits has been breached will be treated as immune
        // 1: Reverts the last unit mind controlled to take the new one
        // 2: Reverts from the first unit mind controlled to the last 
        // 3: Random revert, reverts a random unit
        integer revertmode = 2
        
        
        // Set this to true if when a unit that has mind controlled units himself is mind controlled, then his controlled units swap with him, if false they will be reverted. 
        // If this is set to true and the targets are mind controlled back to their original team, then they are all free'd 
        boolean casterswap = true
        
        // Set this to true if you want mind control to steal mind controlled units from other players, or set to false if mind controlled units are immune
        boolean mccansteal = true
        // Sets if the lightning effect only shows if a unit is selected   
        boolean lightningshow = true
        // Set this to true if you want the mind control lightning to be visible to any player        
        boolean lightningvisible = true
        // Set this to true if you want units that also know the mind control ability to be immune        
        boolean mc_immunity = true
        // (Overrides above) Same as above, however set this one to true if you want units with mind control to be immune if the level of the skill is the same as or above the casters level        
        boolean mc_immunitylevel = true
        // If this is set to true then a unit can be regained if he moves back within the maximum distance        
        boolean regains = true
        // If this is set to true than the lightning will fade depending on how close the unit is to max distance        
        boolean maxfade = true
        // If this is set to true then a regainable unit will display a timer above their head only visible to the controlling player and to the previous owner of the unit
        boolean regaintimer = true
        // If this is set to true then level up enhancements will be applied to all current mind controlled units as the caster levels up        
        boolean controlenhance = true
        // If this is set to true than the mind control will be reverted if the mind control buff is no longer present        
        boolean buffrevert = true
        // If this is set to true than the mind control skill will add an aura ability as specified at the top of the settings section to distribute the negative buff to victims
        // Set this to true if you specified an aura ability at the top of the settings section.        
        boolean buffability = true
        // Set this to true if you want the regain timer to reset after every regain        
        boolean timerreset = false
        // Sets how long the units have to move back within maximum distance before the unit is lost until recast
     
     
     
        //Regain settings
        //................................................
        real regaintime = 1.0
        // This sets the regain limit, units can only be regained this number of times. set to 0 for unlimited 
        integer regainlimit = 1
        // Set the decrease to the maximum distance per regain. set to 0 for no affect
        real regainhandicap = 50.0
        
        
        
        //Settings which control the level up enhancements, only applied after level 1
        //................................................
        //Sets the maximum distance gained per level
        real maxdist_level = 150.0
        // Sets the amount of extra mind controlled units allowed per level
        integer maxunits_level = 1
        // Sets the amount of regain time added per level
        real regaintime_level = 1.0
        // Sets the amount of regains
        integer regainlimit_level = 1
        // Sets the reduction to regain handicap per level
        real regainhandicap_level = 10.0
        
        
        
        
        //Settings which control the spell & lightning effects
        //................................................
        //Sets the primary control lightning type visible between both units
        string controllightning = "HWPB"
        // Sets the initial cast effect applied to the target as soon as he is taken to the new team        
        string casteffect = "Abilities\\Spells\\Undead\\DeathCoil\\DeathCoilSpecialArt.mdl"
        // Sets the effect that remains over the head of the mind controlled unit
        string overheadeffect = "Abilities\\Spells\\Other\\HowlOfTerror\\HowlTarget.mdl"
        // Sets the effect which appears on the victim as soon as he is regained from a lost mind control
        string regaineffect = "Abilities\\Spells\\Undead\\DeathCoil\\DeathCoilSpecialArt.mdl"
        // Sets the overhead effect for when the spell is cast on an immune unit
        string immuneeffect = "Abilities\\Spells\\Demon\\DemonBoltImpact\\DemonBoltImpact.mdl"
        // Sets the break effect, the visible effect above the units head when the mind link is broken
        string breakeffect = "Abilities\\Spells\\Human\\Feedback\\ArcaneTowerAttack.mdl"
        // Sets the caster effect visible as soon as he takes a unit
        string castereffect = "Abilities\\Spells\\Human\\Invisibility\\InvisibilityTarget.mdl"
        
        
        


    endglobals   
    
    
    
    // Sets the manacost regained to the caster if he casts it on an immune unit
    // Set the mana cost the same as the spell, or different if you would like it to be
    
    private function manacost takes nothing returns nothing     
        set manaCost[1] = 50
        set manaCost[2] = 75
        set manaCost[3] = 100     
        // To add more levels to the skill simply make a new line changing the identifier number to the same number as the level, for example:
        // set manaCost[4] = 125 would set level 4 of the skill to a cost of 125                
    endfunction
    
    
        
    // Custom immunity conditions, if returned true than the unit will be immune
    // This setting requires a bit of JASS knowledge
    private constant function immunityfilter takes unit target returns boolean
        return IsUnitType(target, UNIT_TYPE_MECHANICAL) or IsUnitType(target, UNIT_TYPE_STRUCTURE)
    endfunction
    
    
    
    
    // Sets the colour of the lightning
    private function lightcolour takes lightning light, real alpha returns lightning
    
    
        local real r = 100.0  // Lightning red colour          
        local real b = 100.0  // Lightning blue colour
        local real g = 0.0    // Lightning green colour
        
        call SetLightningColor(light, r, g, b, alpha)  // DO not touch the alpha setting, that is set in the spell code  
        return light
        
    endfunction
    
    // Sets the colour of the lightning when the mind control link is broken and the unit can be regained
    private function regaincolour takes lightning light returns lightning
    
        local real a = 1.0  // Transparency alpha setting
        local real r = 1.0  // Red colour
        local real b = 0.0  // Blue colour
        local real g = 0.0  // Green colour
    
        call SetLightningColor(light, r, g, b, a)     
        return light
        
    endfunction



    
    ///////////////////////////////////////////
    ///////////////////////////////////////////
    // End Configuration //////////////////////
    ///////////////////////////////////////////
    ///////////////////////////////////////////
    
    
    // Immunity check function, conditions for a unit to be immune
    private function MC_Isimmune takes unit target, unit caster returns boolean
    
        local integer level = GetUnitAbilityLevel(caster, abilId)
        local integer level2 = GetUnitAbilityLevel(target, abilId)
        local integer casterUnits = LoadInteger(mc_hash, GetHandleId(caster), 20)
        local integer maxUnits = maxunits + (maxunits_level * (level - 1))
        
        if GetUnitAbilityLevel(target, immuneId) > 0 or immunityfilter(target) then
            return true
        elseif mc_immunity and level2 > 0 and mc_immunitylevel == false then
            return true
        elseif mc_immunitylevel and level2 >= level then   
            return true 
        elseif revertmode == 0 and casterUnits == maxUnits then
            return true
        elseif not mccansteal and LoadPlayerHandle(mc_hash, GetHandleId(target), 2) != null then
            return true
        endif 
      
        set target = null
        set caster = null
        return false 
               
    endfunction
    
    
    // Lightning check function, conditions for the lightning to show up
    private function MC_Lightningconditions takes unit target, unit caster returns boolean
    
        local integer targetHandle = GetHandleId(target)
        local integer casterHandle = GetHandleId(caster)
        local unit targetTransport = LoadUnitHandle(mc_hash, targetHandle, 6)
        local unit casterTransport = LoadUnitHandle(mc_hash, casterHandle, 23) 
        if lightningshow and (IsUnitSelected(target, GetLocalPlayer()) or IsUnitSelected(caster, GetLocalPlayer())) then
            return true
        elseif lightningshow and ((IsUnitSelected(targetTransport, GetLocalPlayer()) and IsUnitInTransport(target, targetTransport)) or (IsUnitSelected(casterTransport, GetLocalPlayer()) and IsUnitInTransport(caster, casterTransport))) then   
            return true
        elseif not lightningshow and lightningvisible then
            return true
        elseif not lightningvisible and GetOwningPlayer(caster) == GetLocalPlayer() then
            return true
        endif 
        
        set targetTransport = null
        set casterTransport = null
        set target = null
        set caster = null
        return false        
        
    endfunction
    

    // This function returns an exact copy of the group passed to it

    private function MC_Groupcopy takes group units returns group
    
        local group filter1 = CreateGroup()
        local group filter2 = CreateGroup()
        local unit first
        
        loop
            set first = FirstOfGroup(units)
            exitwhen first == null
            call GroupAddUnit(filter1, first)
            call GroupAddUnit(filter2, first)
            call GroupRemoveUnit(units, first)
        endloop
        
        loop 
            set first = FirstOfGroup(filter1)
            exitwhen first == null
            call GroupAddUnit(units, first)
            call GroupRemoveUnit(filter1, first)
        endloop
        
        call DestroyGroup(filter1)
        
        set filter1 = null
        set first = null 
        set units = null 
        return filter2
                                                             
    endfunction

    // This function filters all of the units with an ID number above the targets ID number down for a specific caster 

    private function MC_Idfilter takes unit target, unit caster returns nothing
    
        local unit first
            
        local group tempGroup = MC_Groupcopy(mc_targets)
        
        local integer casterHandle = GetHandleId(caster)
        local integer targetHandle = GetHandleId(target)
        local integer targetID = LoadInteger(mc_hash, targetHandle, 4)
        local integer firstHandle
        local integer firstID
                
        loop
        
            set first = FirstOfGroup(tempGroup)
            exitwhen first == null
            set firstHandle = GetHandleId(first)
            set firstID = LoadInteger(mc_hash, firstHandle, 4)
            if caster == LoadUnitHandle(mc_hash, firstHandle, 1) and targetID < firstID then
                call SaveInteger(mc_hash, firstHandle, 4 , firstID - 1)
            endif
            call GroupRemoveUnit(tempGroup, first)
            
        endloop    
        
        call DestroyGroup(tempGroup)  
        set tempGroup = null
        set first = null 
        set target = null
        set caster = null
                               
    endfunction



    // This function controls reverting units to their previous owner


    public function MC_Revert takes unit caster, unit target returns nothing
    
    
        local integer casterHandle = GetHandleId(caster)
        local integer targetHandle = GetHandleId(target)
        local integer casterUnits = LoadInteger(mc_hash, casterHandle, 20) - 1
        
        local player owner = LoadPlayerHandle(mc_hash, targetHandle, 2)
        
        local lightning light = LoadLightningHandle(mc_hash, targetHandle, 5)
        
        call SetUnitOwner(target, owner, true)
        call SaveInteger(mc_hash, casterHandle, 20, casterUnits) 
        call GroupRemoveUnit(mc_targets, target)
        call DestroyLightning(light)
        call SaveLightningHandle(mc_hash, targetHandle, 5, null)
        call DestroyEffect(AddSpecialEffectTarget(breakeffect, target, "overhead"))
        call DestroyEffect(LoadEffectHandle(mc_hash, targetHandle, 8))
        if maxunits > 0 then
            call MC_Idfilter(target, caster)   
        endif
        call UnitRemoveAbility(target, buffId)
        call UnitRemoveAbility(target, buffabilId)
        call DestroyTextTag(LoadTextTagHandle(mc_hash, targetHandle, 15))
        call SaveTextTagHandle(mc_hash, targetHandle, 15, null)
        
        if LoadPlayerHandle(mc_hash, casterHandle, 2) == null and casterUnits == 0 then
            call FlushChildHashtable(mc_hash, casterHandle)
        endif
        if LoadInteger(mc_hash, targetHandle, 20) == 0 then
            call FlushChildHashtable(mc_hash, targetHandle) 
        endif                        
       
        set owner = null
        set light = null
        set target = null
        set caster = null
        
    endfunction  



    // This function controls maximum units breaches

    private function MC_Max takes unit caster, unit target returns nothing
    
        local unit filterUnit
        local unit filterCaster 
        local unit array castersUnits
                    
        local integer targetHandle = GetHandleId(target)
        local integer casterHandle = GetHandleId(caster)
        local integer mode = revertmode
        local integer casterUnits = LoadInteger(mc_hash, casterHandle, 20)
        local integer count = 0
        local integer filterHandle
        local integer unitID
        local integer test 
          
        local group tempGroup = MC_Groupcopy(mc_targets)  
     
        
        loop
            set filterUnit = FirstOfGroup(tempGroup)
            set filterHandle = GetHandleId(filterUnit)
            set filterCaster = LoadUnitHandle(mc_hash, filterHandle, 1)
            set unitID = LoadInteger(mc_hash, filterHandle, 4)
            exitwhen filterUnit == null    
            if filterCaster == caster then
                set castersUnits[unitID] = filterUnit
            endif   
            call GroupRemoveUnit(tempGroup, filterUnit)
        endloop 
        
        if mode == 1 then             
            call MC_Revert(caster, castersUnits[casterUnits - 1])
        elseif mode == 2 then   
            call MC_Revert(caster, castersUnits[0] )      
        elseif mode == 3 then 
            call MC_Revert(caster, castersUnits[GetRandomInt(0, casterUnits - 1)])
        endif 
        
        loop
            exitwhen castersUnits[count] == null
            set castersUnits[count] = null
            set count = count + 1
        endloop
        
        set filterUnit = null
        set filterCaster = null
        set caster = null
        set target = null
        set tempGroup = null
        call DestroyGroup(tempGroup)
                
    endfunction
    
  
    // This is the timer function, this controls the lightning and checks the distance between the units    
    
    private function MC_Distance takes nothing returns nothing
        local unit target 
        local unit caster
        local unit targetTransport 
        local unit casterTransport        
        
        local integer targetHandle
        local integer casterHandle
        local integer casterUnits
        local integer level2
        local integer level
        local integer regainLimit        
        
        local real targetX 
        local real targetY 
        local real targetZ 
        local real casterX 
        local real casterY 
        local real casterZ 
        local real lengthY 
        local real lengthX 
        local real distance 
        local real maxDistance
        local real percentage
        local real regainHandicap
        local real regainTime
        
        local group tempGroup = MC_Groupcopy(mc_targets)
        
        local lightning light
        
        local player casterOwner
        local player targetOwner
        local player newOwner 
        local player oldOwner  
        
        local boolean regainable
        
        local texttag regainText
            
        loop 
        
        
            // Loop variables
        
            set target = FirstOfGroup(tempGroup)
            exitwhen target == null
            
            
            set targetHandle = GetHandleId(target)
            set targetTransport = LoadUnitHandle(mc_hash, targetHandle, 6)
            set caster = LoadUnitHandle(mc_hash, targetHandle, 1)
            set casterHandle = GetHandleId(caster)
            set casterTransport = LoadUnitHandle(mc_hash, casterHandle, 23)
            set level2 = GetUnitAbilityLevel(caster, abilId) - 1
            set level = LoadInteger(mc_hash, targetHandle, 16)
            set targetX = GetUnitX(target)
            set targetY = GetUnitY(target)
            set targetZ = GetUnitFlyHeight(target)
            set casterX = GetUnitX(caster)
            set casterY = GetUnitY(caster)
            set casterZ = GetUnitFlyHeight(caster)
            set regainLimit = LoadInteger(mc_hash, targetHandle, 9)
            set regainHandicap = LoadReal(mc_hash, targetHandle, 18)
            set maxDistance = LoadReal(mc_hash, targetHandle, 17)
            set casterUnits = LoadInteger(mc_hash, casterHandle, 20)
            set light = LoadLightningHandle(mc_hash, targetHandle, 5)
            set casterOwner = GetOwningPlayer(caster)
            set targetOwner = GetOwningPlayer(target)  
            set newOwner = LoadPlayerHandle(mc_hash, targetHandle, 11)         
            if targetTransport != null and IsUnitInTransport(target, targetTransport) then
                set targetX = GetUnitX(targetTransport)
                set targetY = GetUnitY(targetTransport)
                set targetZ = GetUnitFlyHeight(targetTransport)                
            endif
            if casterTransport != null and IsUnitInTransport(caster, casterTransport) then
                set casterX = GetUnitX(casterTransport)
                set casterY = GetUnitY(casterTransport)
                set casterZ = GetUnitFlyHeight(casterTransport)
            endif   
            set lengthY = targetY - casterY
            set lengthX = targetX - casterX
            set distance = SquareRoot((lengthY * lengthY) + (lengthX * lengthX))  
            set percentage = 1.0 - (distance / maxDistance)                     
            set regainTime = LoadReal(mc_hash, targetHandle, 10)
            set oldOwner = LoadPlayerHandle(mc_hash, targetHandle, 2)
            set regainable = LoadBoolean(mc_hash, targetHandle, 7)
            set regainText = LoadTextTagHandle(mc_hash, targetHandle, 15)
            if not maxfade then
                set percentage = 1.0
            endif
            if level2 > level and controlenhance then
                call SaveInteger(mc_hash, targetHandle, 9, regainLimit + (regainlimit_level * (level2 - level)))
                call SaveInteger(mc_hash, targetHandle, 16, level2)
                call SaveReal(mc_hash, targetHandle, 18, regainHandicap - (regainhandicap_level * (level2 - level))) 
                call SaveReal(mc_hash, targetHandle, 17, maxDistance + (maxdist_level * (level2 - level)))  
                set level = level2
            endif
      
            // Loop actions
            
                           
            
            // Lightning control
            
            if MC_Lightningconditions(target, caster) then
                if light == null then
                    if regainable == false then
                       set light = lightcolour(AddLightningEx(controllightning, true, casterX, casterY, casterZ, targetX, targetY, targetZ), percentage)                          
                    else
                        set light = regaincolour(AddLightningEx(controllightning, true, casterX, casterY, casterZ, targetX, targetY, targetZ)) 
                    endif
                    call SaveLightningHandle(mc_hash, targetHandle, 5, light) 
                elseif regainable == false then         
                    set light = lightcolour(light, percentage)
                else    
                    set light = regaincolour(light)
                endif
                call MoveLightningEx(light, true, casterX, casterY, casterZ, targetX, targetY, targetZ)    
            elseif light != null then
                call DestroyLightning(light)
                call SaveLightningHandle(mc_hash, targetHandle, 5, null) 
            endif 
            
                                     
                              
           
            // Regain text
            
            if regaintimer and (GetLocalPlayer() == targetOwner or GetLocalPlayer() == casterOwner) and regainable == true then   
                if regainText == null then
                    set regainText = CreateTextTag()                   
                    call SetTextTagPosUnit(regainText, target, 40)
                    call SetTextTagText(regainText, I2S(R2I(regainTime) + 1), 12 * 0.023 / 10) 
                    call SetTextTagColor(regainText, 150, 0, 150, 255)
                else
                    call SetTextTagPosUnit(regainText, target, 40)
                    call SetTextTagText(regainText, I2S(R2I(regainTime) + 1), 12 * 0.023 / 10)
                endif     
                call SaveTextTagHandle(mc_hash, targetHandle, 15, regainText)               
            endif 
           
        
            
            // Spell update and revert conditions

            if (targetOwner == oldOwner and regainable == false) or (regainable == true and newOwner != casterOwner)  then
                call MC_Revert(caster, target)          
            elseif GetUnitAbilityLevel(target, buffId) <= 0 and buffrevert then
                call MC_Revert(caster, target)            
            elseif GetUnitState(target, UNIT_STATE_LIFE) <= 0 or GetUnitState(caster, UNIT_STATE_LIFE) <= 0 then
                call MC_Revert(caster, target)
            elseif casterOwner != targetOwner and regainable == false then
               if casterswap then 
                    call SetUnitOwner(target, GetOwningPlayer(caster), true)
               else
                    call MC_Revert(caster, target)
               endif            
            elseif (distance > maxDistance and maxdist != 0)  then
                if regainable == false and (regainLimit > 0 or regainlimit <= 0) and regains then
                    set regainable = true
                    call SaveBoolean(mc_hash, targetHandle, 7, regainable)
                    call SetUnitOwner(target, oldOwner, true)
                    if regainhandicap > 0 then
                        call SaveReal(mc_hash, targetHandle, 17, maxDistance - regainHandicap)      
                    endif               
                elseif regainable == true and regainTime > 0 then                                    
                    call SaveReal(mc_hash, targetHandle, 10, regainTime - 0.03)   
                else
                    call MC_Revert(caster, target)
                endif
            elseif distance <= maxDistance and regainable == true then                                           
                set regainable = false                               
                call DestroyEffect(AddSpecialEffectTarget(regaineffect, target, "head"))  
                call SetUnitOwner(target, casterOwner, true)
                call SaveBoolean(mc_hash, targetHandle, 7, regainable)
                call SaveInteger(mc_hash, targetHandle, 9, regainLimit - 1)
                if timerreset == true then
                    call SaveReal(mc_hash, targetHandle, 10, regaintime + (regaintime_level * level))
                endif
                if regaintimer and (GetLocalPlayer() == targetOwner or GetLocalPlayer() == casterOwner) then
                    call DestroyTextTag(regainText)
                    call SaveTextTagHandle(mc_hash, targetHandle, 15, null)
                endif
            endif

            
            call GroupRemoveUnit(tempGroup, target)
            
                                            
        endloop
            
                                                                                                     
        // Cleanup      
                               
        call DestroyGroup(tempGroup)        
        set tempGroup = null
        set light = null
        set casterOwner = null
        set targetOwner = null
        set newOwner = null
        set oldOwner = null 
        set regainText = null            

        // Turn off the timer if there are no more targets in the map
            
        if FirstOfGroup(mc_targets) == null then
            call PauseTimer(mc_time)
        endif 
            
        
                                      
    endfunction 
        
    
    
    // Function which controls what happens when the spell is cast
  
  
    private function MC_Cast takes nothing returns boolean
    
         local unit caster = GetTriggerUnit()         
         local unit target = GetSpellTargetUnit() 
         local integer targetHandle = GetHandleId(target)   
         local integer casterHandle = GetHandleId(caster)
         local unit oldCaster = LoadUnitHandle(mc_hash, targetHandle, 1)
                               
         local integer abil = abilId
         local integer immuneabil = immuneId  
         local integer immmode = immunemode     
         local integer level = GetUnitAbilityLevel(caster, abilId) - 1            
         local integer maxUnits = maxunits + (maxunits_level * level)
         local integer casterUnits = LoadInteger(mc_hash, casterHandle, 20)
         local integer regainLimit = regainlimit + (regainlimit_level * level)
         
         local real maxDistance = maxdist + (maxdist_level * level)
         local real regainTime = regaintime + (regaintime_level * level)
         local real regainHandicap = regainhandicap - (regainhandicap_level * level)
         
         local player casterOwner = GetOwningPlayer(caster)
         local player oldOwner = LoadPlayerHandle(mc_hash, targetHandle, 2)    
         

        
        
         if GetSpellAbilityId() != abil or MC_Isimmune(target, caster) then
            if GetSpellAbilityId() == abil then 
                call DestroyEffect(AddSpecialEffectTarget(immuneeffect, target, "overhead"))
                call SaveBoolean(mc_hash, casterHandle, 22, true) 
            endif
            return false
         endif          
                      
         if casterUnits == maxUnits and maxunits > 0 then
            call MC_Max(caster, target)  
            set casterUnits = casterUnits - 1   
         endif    
            
         // Swaps to the new caster if the unit is already controlled
                                
         if oldOwner == null then
             set oldOwner = GetOwningPlayer(target)  
         else 
             call MC_Revert(oldCaster, target)
         endif   
         
         // Save the handles required for the timer loop
         
         call SavePlayerHandle(mc_hash, targetHandle, 2, oldOwner)              
         call SaveUnitHandle(mc_hash, targetHandle, 1, caster)  
         call SaveInteger(mc_hash, targetHandle, 3, level)
         call SaveInteger(mc_hash, targetHandle, 4, casterUnits)
         call SaveInteger(mc_hash, casterHandle, 20, casterUnits + 1)
         call SaveInteger(mc_hash, targetHandle, 9, regainLimit)
         call SaveInteger(mc_hash, targetHandle, 16, level)
         call SaveReal(mc_hash, targetHandle, 10, regainTime)
         call SaveReal(mc_hash, targetHandle, 17, maxDistance)
         call SaveReal(mc_hash, targetHandle, 18, regainHandicap)
         call SaveBoolean(mc_hash, targetHandle, 7, false)
         call SavePlayerHandle(mc_hash, targetHandle, 11, casterOwner)
         call SaveEffectHandle(mc_hash, targetHandle, 8, AddSpecialEffectTarget(overheadeffect, target, "head"))

         // Start the timer and turn the target to the new team and setup the target for the loop
         
         if FirstOfGroup(mc_targets) == null then
             call TimerStart(mc_time, 0.03, true, function MC_Distance)
         endif  
         call DestroyEffect(AddSpecialEffectTarget(castereffect, caster, "overhead"))
         call DestroyEffect(AddSpecialEffectTarget(casteffect, target, "overhead"))
         call SetUnitOwner(target, casterOwner, true)                                                         
         call GroupAddUnit(mc_targets, target)          
         if buffability then
             call UnitAddAbility(target, buffabilId)
         endif
         
         // Cleanup
         
                  
         set target = null
         set caster = null
         set casterOwner = null
         set oldOwner = null
         set oldCaster = null                        
         return false  
                                                             
    endfunction  
    


    // Function which restores the units mana and cooldown if the target is immune
    
   
    private function MC_Restore takes nothing returns boolean
    
        local unit caster = GetTriggerUnit()     
        local integer casterHandle = GetHandleId(caster) 
                

        local integer level = GetUnitAbilityLevel(caster, abilId) - 1
        local integer immmode = immunemode 
        
        local real mana = GetUnitState(caster, UNIT_STATE_MANA)       
        

        if GetSpellAbilityId() != abilId  then
            return false
        endif   
        
        if LoadBoolean(mc_hash, casterHandle, 22) then
            if immmode == 1 then
                call UnitRemoveAbility(caster, abilId)
                call UnitAddAbility(caster, abilId)    
                call SetUnitAbilityLevel(caster, abilId, level + 1)
                call SetUnitState(caster, UNIT_STATE_MANA, mana + manaCost[level + 1])          
            elseif immmode == 3 then
                call UnitRemoveAbility(caster, abilId)
                call UnitAddAbility(caster, abilId)
                call SetUnitAbilityLevel(caster, abilId, level + 1)
            elseif immmode == 2 then
                call SetUnitState(caster, UNIT_STATE_MANA, mana + manaCost[level + 1])  
            endif
            call SaveBoolean(mc_hash, casterHandle, 22, false)
        endif
        
  
        
        set caster = null
        return false   
                          
    endfunction   
                                                      
    
    

    //Function which saves the transport unit if a target enters a transport
    
    private function MC_Entertransport takes nothing returns boolean
    
        local unit entered = GetTriggerUnit()
        local unit transport = GetTransportUnit()
        
        local integer enteredHandle = GetHandleId(entered)
        
        if LoadPlayerHandle(mc_hash, enteredHandle, 2) != null then
            call SaveUnitHandle(mc_hash, enteredHandle, 6, transport)
        elseif LoadInteger(mc_hash, enteredHandle, 20) > 0 then
            call SaveUnitHandle(mc_hash, enteredHandle, 23, transport)
        endif
            
        set entered = null
        set transport = null
        return false    
            
    endfunction
       
  
    // Initialiser function, initialises the triggers        
                                                             
    private function Init takes nothing returns nothing
       
        local trigger trig = CreateTrigger() 
        call manacost()
        call TriggerRegisterAnyUnitEventBJ(trig, EVENT_PLAYER_UNIT_SPELL_EFFECT)    
        call TriggerAddCondition(trig, Condition(function MC_Cast))  
        set trig = CreateTrigger()
        call TriggerRegisterAnyUnitEventBJ(trig, EVENT_PLAYER_UNIT_LOADED)
        call TriggerAddCondition(trig, Condition(function MC_Entertransport))
        if immunemode >= 1 and immunemode <= 3 then
           set trig = CreateTrigger() 
           call TriggerRegisterAnyUnitEventBJ(trig, EVENT_PLAYER_UNIT_SPELL_ENDCAST)
           call TriggerAddCondition(trig, Condition(function MC_Restore))
        endif
        set trig = null
        
    endfunction
    
endscope    