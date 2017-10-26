//***************************************************************************
//*                                                                         *
//*                                                                         *
//*                     +----------------------------+                      *
//*                     |  Cluster Rockets [v1.0.7]  |                      *
//*                     |  by Ofel          [ClsR_]  |                      *
//*                     +----------------------------+                      *
//*                                                                         *
//*                                                                         *
//***************************************************************************

//***************************************************************************
//*
//*   Additional Configuration
//*

//---------------------------------------------------------------------------
// Preloading spell can reduce lag on the first use of the spell.
// true: Spell will be preloaded on initialization.
// false: Spell will not be preloaded.
constant function ClsR_PreloadSpell takes nothing returns boolean
    return true
endfunction

//---------------------------------------------------------------------------
// When a rocket hit the border of the map, the movement position will be
//   bounded to avoid game crash.
// true: Rocket will be bounded on the edge of entire map border
// false: Rocket will be bounded on the edge of playable map border
constant function ClsR_BoundsEntireMap takes nothing returns boolean
    return true
endfunction

//---------------------------------------------------------------------------
// Since dummies are unit, they are counted on the player scoreboard. So
//   it's better to create the dummies with Neutral Passive as their owner.
//   Shouldn't change this.
constant function ClsR_DummiesOwner takes nothing returns player
    return Player(PLAYER_NEUTRAL_PASSIVE)
endfunction

//---------------------------------------------------------------------------
// Making a non-flying unit able to fly (change height), by the default uses
//   the Crow ability raw ID.
//   In case the rockets doesn't fly, change this to any Crow-based ability.
constant function ClsR_FlyAbilityID takes nothing returns integer
    return 'Amrf'
endfunction

//---------------------------------------------------------------------------
// Spell update periodic timeout.
//   Please consider twice before changing this as it can affect many things
//   including performance.
//   32 iterations/frames per second is a recommendation.
constant function ClsR_FrameUpdate takes nothing returns real
    return 1 / 32.
endfunction

//---------------------------------------------------------------------------
// Range for scanning collision size of nearby units.
//   In other hand, this represents the maximum collision size the spell can
//   detect.
//   Wisely increase this if you think the rockets doesn't properly collide
//   with any units.
constant function ClsR_CollisionScanRange takes nothing returns real
    return 200.00
endfunction

//---------------------------------------------------------------------------
// Degree and radian convert formula.
//   There is no reason to change these numbers. But here you can change the
//   precision, and you'll get a different result.

constant function ClsR_Deg2Rad takes nothing returns real
    // From Windows calculator --> 0.01745329251994329576923690768489
    return 0.0174532
endfunction

constant function ClsR_Rad2Deg takes nothing returns real
    // From Windows calculator --> 57.295779513082320876798154814105
    return 57.2957795
endfunction

//---------------------------------------------------------------------------
//*
//*   Filteration
//*
//---------------------------------------------------------------------------

//---------------------------------------------------------------------------
// Filteration for units that can be acquired as target by the rockets.
function ClsR_AcquisitionFilter takes unit filterUnit, player casterOwner returns boolean
    return IsUnitEnemy(filterUnit, casterOwner) and not IsUnitType(filterUnit, UNIT_TYPE_MAGIC_IMMUNE)
endfunction

//---------------------------------------------------------------------------
// Filteration for units that can trigger collision with the rockets.
function ClsR_CollisionFilter takes unit filterUnit, player casterOwner returns boolean
    return IsUnitEnemy(filterUnit, casterOwner)
endfunction

//---------------------------------------------------------------------------
// Filteration for units that can receive damage.
function ClsR_DamageExplosionFilter takes unit filterUnit, player casterOwner returns boolean
    return not IsUnitType(filterUnit, UNIT_TYPE_MAGIC_IMMUNE)
endfunction

//*
//*   End of Configuration
//*
//***************************************************************************

//---------------------------------------------------------------------------
// Function that tell if a unit is alive.
function ClsR_IsUnitAlive takes unit targetUnit returns boolean
    return GetUnitTypeId(targetUnit) != 0 and not IsUnitType(targetUnit, UNIT_TYPE_DEAD)
endfunction

//---------------------------------------------------------------------------
// Function that tell if a unit is channeling the spell.
function ClsR_IsUnitChanneling takes unit targetUnit returns boolean
    return GetUnitCurrentOrder(targetUnit) == udg_ClsR_AbilityOrder
endfunction

//---------------------------------------------------------------------------
// Function to get a bounded x.
function ClsR_BoundX takes real x returns real
    if x>udg_ClsR_mapBorder[1] then
        set x = udg_ClsR_mapBorder[1]
    elseif x<udg_ClsR_mapBorder[3] then
        set x = udg_ClsR_mapBorder[3]
    endif
    
    // Return bounded x
    return x
endfunction

//---------------------------------------------------------------------------
// Function to get a bounded y.
function ClsR_BoundY takes real y returns real
    if y>udg_ClsR_mapBorder[2] then
        set y = udg_ClsR_mapBorder[2]
    elseif y<udg_ClsR_mapBorder[4] then
        set y = udg_ClsR_mapBorder[4]
    endif
    
    // Return bounded y
    return y
endfunction

//---------------------------------------------------------------------------
// Function to get 2D distance between points - adapted from a vJASS library
//   by Nestharus.
function ClsR_GetMagnitude2D takes real x, real y returns real
    return SquareRoot(x*x+y*y)
endfunction

//---------------------------------------------------------------------------
// Function to get 3D distance between points - adapted from a vJASS library
//   by Nestharus.
function ClsR_GetMagnitude3D takes real x, real y, real z returns real
    return SquareRoot(x*x+y*y+z*z)
endfunction

//---------------------------------------------------------------------------
// Function to get 2D angle between points - adapted from a vJASS library by
//   Nestharus.
function ClsR_GetAngle2D takes real x, real y returns real
    return Atan2(y, x)
endfunction

//---------------------------------------------------------------------------
// Function to get 3D angle between points - adapted from a vJASS library by
//   Nestharus.
function ClsR_GetAngle3D takes real distance2D, real z returns real
    return Atan2(z, distance2D)
endfunction

//---------------------------------------------------------------------------
// Function to make a unit able to fly - adapted from a vJASS library by
//   TriggerHappy.
function ClsR_UnitApplyFly takes unit targetUnit returns nothing
    if UnitAddAbility(targetUnit, ClsR_FlyAbilityID()) and UnitRemoveAbility(targetUnit, ClsR_FlyAbilityID()) then
    endif
endfunction

//---------------------------------------------------------------------------
// Function to get unit collision size - adapted from a vJASS library by
//   Nestharus.
function ClsR_GetUnitCollisionSize takes unit targetUnit returns real
    local real x
    local real y
    local real l
    local real h
    local real m
    local real nm
    local integer id = GetUnitTypeId(targetUnit)
    
    if LoadBoolean(udg_ClsR_Hashtable, id, 10) then
        return LoadReal(udg_ClsR_Hashtable, id, 10)
    endif
    
    set x = GetUnitX(targetUnit)
    set y = GetUnitY(targetUnit)
    set l = 0
    set h = 300
    set m = 150
    loop
        if (IsUnitInRangeXY(targetUnit, x+m, y, 0)) then
            set l = m
        else
            set h = m
        endif
        set nm = (l+h)/2
        exitwhen nm+.001 > m and nm-.001 < m
        set m = nm
    endloop
    
    set m = (R2I(m*10)/10.)/2 // Take half for the radius
    
    call SaveReal(udg_ClsR_Hashtable, id, 10, m)
    call SaveBoolean(udg_ClsR_Hashtable, id, 10, true)
    
    return m
endfunction

//---------------------------------------------------------------------------
// Function to get terrain z - adapted from a vJASS library by D.O.G.
function ClsR_GetTerrainZ takes real x, real y returns real
    // Move Z location finder
    call MoveLocation(udg_ClsR_ZLocator, x, y)
    
    // Return location terrain z
    return GetLocationZ(udg_ClsR_ZLocator)
endfunction

//---------------------------------------------------------------------------
// Function to get (height + terrain z) of a unit alternatively.
function ClsR_GetUnitZAlt takes unit targetUnit, real x, real y returns real
    local real height
    if IsUnitType(targetUnit, UNIT_TYPE_FLYING) then
        set height = GetUnitFlyHeight(targetUnit)
    else
        // Add bonus height when unit is not a flying type
        set height = GetUnitFlyHeight(targetUnit) + udg_ClsR_RocketsUnitsHeightBonus
    endif
    
    // Return joined height and terrain z
    return height + ClsR_GetTerrainZ(x, y)
endfunction

//---------------------------------------------------------------------------
// Function to get 3D distance between a point and a unit.
function ClsR_GetDistanceToUnit3D takes real sourceX, real sourceY, real sz, unit targetUnit returns real
    local real targetX = GetUnitX(targetUnit)
    local real targetY = GetUnitY(targetUnit)
    local real targetZ = ClsR_GetUnitZAlt(targetUnit, targetX, targetY)
    
    // Return 3D distance
    return ClsR_GetMagnitude3D(targetX-sourceX, targetY-sourceY, targetZ-sz)
endfunction

//---------------------------------------------------------------------------
// Function to set a unit height by z value (new z - terrain z) of a unit.
function ClsR_SetUnitZAlt takes unit targetUnit, real z, real x, real y returns nothing
    local real surfaceZ = ClsR_GetTerrainZ(x, y)
    call SetUnitFlyHeight(targetUnit, z - surfaceZ, 0)
endfunction

//---------------------------------------------------------------------------
// Function to set a unit pitch angle - adapted from a vJASS library by
//   Vexorian.
function ClsR_SetUnitPitch takes unit targetUnit, real pitch returns nothing
    local integer i = R2I(pitch * ClsR_Rad2Deg() + 90.5)
    if (179 < i) then
        set i = 179
    elseif (0 > i) then
        set i = 0
    endif
    call SetUnitAnimationByIndex(targetUnit, i)
endfunction

//---------------------------------------------------------------------------
// Function to get new target in range (Area of Effect).
function ClsR_AcquireNewTarget takes real x, real y, integer index returns unit
    // Declare locals
    local unit enumUnit
    local integer i = 0
    
    // Null reference
    set udg_ClsR_Target[0] = null
    
    // Enumerate all units in range
    call GroupEnumUnitsInRange(udg_ClsR_tempGroup, x, y, udg_ClsR_AreaOfEffect[udg_ClsR_Level[index]], null)
    loop
        set enumUnit = FirstOfGroup(udg_ClsR_tempGroup)
        exitwhen enumUnit == null
        
        if enumUnit != udg_ClsR_Caster[index] and ClsR_IsUnitAlive(enumUnit) and ClsR_AcquisitionFilter(enumUnit, udg_ClsR_casterOwner[index]) then
            // Random target
            set i = i + 1
            if GetRandomInt(1, i) == 1 then
                set udg_ClsR_Target[0] = enumUnit
            endif
        endif
        
        call GroupRemoveUnit(udg_ClsR_tempGroup, enumUnit)
    endloop
    
    // Return new target
    return udg_ClsR_Target[0]
endfunction

//---------------------------------------------------------------------------
// Function to start a new instance and return new index for the instance.
function ClsR_Create takes nothing returns integer
    // Declare locals
    local integer newIndex = 0
    
    // Allocate index
    if udg_ClsR_Recyclable == 0 then
        set udg_ClsR_MaxIndex = udg_ClsR_MaxIndex + 1
        set newIndex = udg_ClsR_MaxIndex
    else
        set udg_ClsR_Recyclable = udg_ClsR_Recyclable - 1
        set newIndex = udg_ClsR_Recycle[udg_ClsR_Recyclable]
    endif
    set udg_ClsR_Next[newIndex] = 0
    set udg_ClsR_Next[udg_ClsR_Last] = newIndex
    set udg_ClsR_Prev[newIndex] = udg_ClsR_Last
    set udg_ClsR_Last = newIndex
    
    // Return new index
    return newIndex
endfunction

//---------------------------------------------------------------------------
// Function to finish an instance by index.
function ClsR_Destroy takes integer index returns nothing
  
  // Clean up
    set udg_ClsR_Caster[index] = null
    set udg_ClsR_Rocket[index] = null
    set udg_ClsR_Target[index] = null
    set udg_ClsR_casterOwner[index] = null
    set udg_ClsR_Stage[index] = 0
    
    // Recycle index
  if udg_ClsR_Last == index then
    set udg_ClsR_Last = udg_ClsR_Prev[index]
  endif
    set udg_ClsR_Recycle[udg_ClsR_Recyclable] = index
    set udg_ClsR_Recyclable = udg_ClsR_Recyclable + 1
    set udg_ClsR_Next[udg_ClsR_Prev[index]] = udg_ClsR_Next[index]
    set udg_ClsR_Prev[udg_ClsR_Next[index]] = udg_ClsR_Prev[index]
    
    if udg_ClsR_Next[0] == 0 then
        // --- When no active instances left
        call PauseTimer(udg_ClsR_Timer)
    endif
    
endfunction

//---------------------------------------------------------------------------
// Function to destroy rocket and damage nearby units.
function ClsR_TerminateRocket takes integer rocketIndex returns nothing
    // Declare locals
    local unit enumUnit
    
    // Enumerate all units near the rocket
    call GroupEnumUnitsInRange(udg_ClsR_tempGroup, udg_ClsR_posX[rocketIndex], udg_ClsR_posY[rocketIndex], udg_ClsR_RocketsDamageRange[udg_ClsR_Level[rocketIndex]]+ClsR_CollisionScanRange(), null)
    loop
        set enumUnit = FirstOfGroup(udg_ClsR_tempGroup)
        exitwhen enumUnit == null
        
        if ClsR_GetDistanceToUnit3D(udg_ClsR_posX[rocketIndex], udg_ClsR_posY[rocketIndex], udg_ClsR_posZ[rocketIndex], enumUnit)-ClsR_GetUnitCollisionSize(enumUnit) <= udg_ClsR_RocketsDamageRange[udg_ClsR_Level[rocketIndex]] then
            
            if enumUnit != udg_ClsR_Caster[rocketIndex] and ClsR_IsUnitAlive(enumUnit) and ClsR_DamageExplosionFilter(enumUnit, udg_ClsR_casterOwner[rocketIndex]) then
                // --- Exclude caster and dead units
                // Make unit explode on death
                call SetUnitExploded(enumUnit, udg_ClsR_MakeUnitExplode)
                // Damage unit
                call UnitDamageTarget(udg_ClsR_Caster[rocketIndex], enumUnit, udg_ClsR_DamagePerRocket[udg_ClsR_Level[rocketIndex]], true, false, udg_ClsR_RocketAttackType, udg_ClsR_RocketDamageType, WEAPON_TYPE_WHOKNOWS)
                // Make unit normal
                call SetUnitExploded(enumUnit, false)
            endif
            
        endif
        
        call GroupRemoveUnit(udg_ClsR_tempGroup, enumUnit)
    endloop
    call GroupClear(udg_ClsR_tempGroup)
    
    // Destroy attached dummy model
    call DestroyEffect(udg_ClsR_rocketModel[rocketIndex])
    call KillUnit(udg_ClsR_Rocket[rocketIndex])
    
    // End rocket instance
    call ClsR_Destroy(rocketIndex)
    
endfunction

//---------------------------------------------------------------------------
// Function to create and start a new rocket instance.
function ClsR_LaunchRocket takes integer casterIndex returns nothing
    // Declare locals
    local integer rocketIndex
    local real casterFacing = GetUnitFacing(udg_ClsR_Caster[casterIndex])
    local real casterFacingRad = casterFacing * ClsR_Deg2Rad()
    local real sourceX = GetUnitX(udg_ClsR_Caster[casterIndex]) + udg_ClsR_RocketsSpawnOffset * Cos(casterFacingRad) // Spawn x
    local real sourceY = GetUnitY(udg_ClsR_Caster[casterIndex]) + udg_ClsR_RocketsSpawnOffset * Sin(casterFacingRad) // Spawn y
    local real sourceZ = GetUnitFlyHeight(udg_ClsR_Caster[casterIndex]) + ClsR_GetTerrainZ(sourceX, sourceY) + udg_ClsR_RocketsSpawnHeightBonus // Spawn height + terrain z
    local real targetX
    local real targetY
    local real targetZ
    local real angleZ
    local real rocketFacing
    local real rocketFacingZ
    
    // Allocate new index
    set rocketIndex = ClsR_Create()
    
    // Note: Target type 0 - Instant (No target)
    //       Target type 1 - Unit target
    //       Target type 2 - Point target
    if udg_ClsR_targetType[casterIndex] == 0 then
        
        set udg_ClsR_Target[rocketIndex] = ClsR_AcquireNewTarget(udg_ClsR_posX[casterIndex], udg_ClsR_posY[casterIndex], casterIndex)
        if udg_ClsR_Target[rocketIndex] != null then
            set udg_ClsR_targetCollision[rocketIndex] = ClsR_GetUnitCollisionSize(udg_ClsR_Target[rocketIndex])
            set udg_ClsR_lastX[rocketIndex] = GetUnitX(udg_ClsR_Target[rocketIndex])
            set udg_ClsR_lastY[rocketIndex] = GetUnitY(udg_ClsR_Target[rocketIndex])
            set udg_ClsR_lastZ[rocketIndex] = ClsR_GetUnitZAlt(udg_ClsR_Target[rocketIndex], udg_ClsR_lastX[rocketIndex], udg_ClsR_lastY[rocketIndex])
        else
            set rocketFacing = GetRandomReal(-bj_PI, bj_PI)
            set udg_ClsR_AreaOfEffect[0] = GetRandomReal(0, udg_ClsR_AreaOfEffect[udg_ClsR_Level[casterIndex]])
            set udg_ClsR_lastX[rocketIndex] = udg_ClsR_posX[casterIndex] + udg_ClsR_AreaOfEffect[0] * Cos(rocketFacing)
            set udg_ClsR_lastY[rocketIndex] = udg_ClsR_posY[casterIndex] + udg_ClsR_AreaOfEffect[0] * Sin(rocketFacing)
            set udg_ClsR_lastZ[rocketIndex] = ClsR_GetTerrainZ(udg_ClsR_lastX[rocketIndex], udg_ClsR_lastY[rocketIndex])
        endif
        
    elseif udg_ClsR_targetType[casterIndex] == 1 then
        
        if ClsR_IsUnitAlive(udg_ClsR_Target[casterIndex]) then
            set udg_ClsR_Target[rocketIndex] = udg_ClsR_Target[casterIndex]
            set udg_ClsR_targetCollision[rocketIndex] = udg_ClsR_targetCollision[casterIndex]
            set udg_ClsR_lastX[rocketIndex] = GetUnitX(udg_ClsR_Target[rocketIndex])
            set udg_ClsR_lastY[rocketIndex] = GetUnitY(udg_ClsR_Target[rocketIndex])
            set udg_ClsR_lastZ[rocketIndex] = ClsR_GetUnitZAlt(udg_ClsR_Target[rocketIndex], udg_ClsR_lastX[rocketIndex], udg_ClsR_lastY[rocketIndex])
        else
            set udg_ClsR_lastX[rocketIndex] = udg_ClsR_posX[casterIndex]
            set udg_ClsR_lastY[rocketIndex] = udg_ClsR_posY[casterIndex]
            set udg_ClsR_lastZ[rocketIndex] = udg_ClsR_posZ[casterIndex]
        endif
        
    elseif udg_ClsR_targetType[casterIndex] == 2 and udg_ClsR_AreaOfEffect[udg_ClsR_Level[casterIndex]] > 0 then
        
        if udg_ClsR_PreferTargetUnit then
            set udg_ClsR_Target[rocketIndex] = ClsR_AcquireNewTarget(udg_ClsR_posX[casterIndex], udg_ClsR_posY[casterIndex], casterIndex)
        endif
        if udg_ClsR_Target[rocketIndex] != null then
            set udg_ClsR_targetCollision[rocketIndex] = ClsR_GetUnitCollisionSize(udg_ClsR_Target[rocketIndex])
            set udg_ClsR_lastX[rocketIndex] = GetUnitX(udg_ClsR_Target[rocketIndex])
            set udg_ClsR_lastY[rocketIndex] = GetUnitY(udg_ClsR_Target[rocketIndex])
            set udg_ClsR_lastZ[rocketIndex] = ClsR_GetUnitZAlt(udg_ClsR_Target[rocketIndex], udg_ClsR_lastX[rocketIndex], udg_ClsR_lastY[rocketIndex])
        else
            set udg_ClsR_lastX[rocketIndex] = udg_ClsR_posX[casterIndex]
            set udg_ClsR_lastY[rocketIndex] = udg_ClsR_posY[casterIndex]
            set udg_ClsR_lastZ[rocketIndex] = udg_ClsR_posZ[casterIndex]
        endif
        
    endif
    
    // Copy properties to local reference variables
    set targetX = udg_ClsR_lastX[rocketIndex]
    set targetY = udg_ClsR_lastY[rocketIndex]
    set targetZ = udg_ClsR_lastZ[rocketIndex]
    
    // Get new 3D angles
    set angleZ = ClsR_GetAngle3D(ClsR_GetMagnitude2D(targetX-sourceX, targetY-sourceY), targetZ-sourceZ)
    set rocketFacing = GetRandomReal(casterFacing-udg_ClsR_RocketsMinFacingVariation, casterFacing+udg_ClsR_RocketsMaxFacingVariation)
    set rocketFacingZ = GetRandomReal(angleZ-udg_ClsR_RocketsMinPitchVariation, angleZ+udg_ClsR_RocketsMaxPitchVariation)
    
    set udg_ClsR_Rocket[rocketIndex] = CreateUnit(ClsR_DummiesOwner(), udg_ClsR_Dummy, sourceX, sourceY, rocketFacing)
    
    call ClsR_UnitApplyFly(udg_ClsR_Rocket[rocketIndex])
    call ClsR_SetUnitPitch(udg_ClsR_Rocket[rocketIndex], rocketFacingZ)
    call ClsR_SetUnitZAlt(udg_ClsR_Rocket[rocketIndex], sourceZ, sourceX, sourceY)
    call SetUnitScale(udg_ClsR_Rocket[rocketIndex], udg_ClsR_RocketsSize, 0, 0)
    
    set udg_ClsR_rocketModel[rocketIndex] = AddSpecialEffectTarget(udg_ClsR_RocketsModel, udg_ClsR_Rocket[rocketIndex], "origin")
    set udg_ClsR_Facing[rocketIndex] = rocketFacing*ClsR_Deg2Rad()
    set udg_ClsR_FacingZ[rocketIndex] = rocketFacingZ
    set udg_ClsR_posX[rocketIndex] = sourceX
    set udg_ClsR_posY[rocketIndex] = sourceY
    set udg_ClsR_posZ[rocketIndex] = sourceZ
    set udg_ClsR_Caster[rocketIndex] = udg_ClsR_Caster[casterIndex]
    set udg_ClsR_casterOwner[rocketIndex] = udg_ClsR_casterOwner[casterIndex]
    set udg_ClsR_Level[rocketIndex] = udg_ClsR_Level[casterIndex]
    // Set up rocket expiration timer
    set udg_ClsR_realTimer[rocketIndex] = udg_ClsR_RocketsExpirationTime
    
    // Stage 2 - Handle rockets movement
    set udg_ClsR_Stage[rocketIndex] = 2
    
    // Update launched rockets counter
    set udg_ClsR_Counter[casterIndex] = udg_ClsR_Counter[casterIndex] - 1
    
endfunction

//---------------------------------------------------------------------------
// Function to periodically loop all active instances.
function ClsR_Periodic takes nothing returns nothing
    // Declare locals
    local real sourceX
    local real sourceY
    local real sourceZ
    local real targetX
    local real targetY
    local real targetZ
    local real tempX
    local real tempY
    local real tempZ
    local real dist
    local real dist3D
    local real angle
    local real angleZ
    local unit enumUnit
    local integer casterHandleID
    local integer index = 0
    
    // Loop all instances
    loop
        set index = udg_ClsR_Next[index]
        exitwhen index == 0
        
        // Stage 1: Handle spell channeling, launches x rockets each seconds
        if udg_ClsR_Stage[index] == 1 then
            
            if ClsR_IsUnitAlive(udg_ClsR_Caster[index]) then
                
                if ClsR_IsUnitChanneling(udg_ClsR_Caster[index]) and udg_ClsR_Counter[index] != 0 then
                    // Update wave interval timer
                    set udg_ClsR_realTimer[index] = udg_ClsR_realTimer[index] - ClsR_FrameUpdate()
                    if udg_ClsR_realTimer[index] <= 0 then
                        // Update rocket launch interval timer
                        set udg_ClsR_realTimer2[index] = udg_ClsR_realTimer2[index] + ClsR_FrameUpdate()
                        if udg_ClsR_realTimer2[index] >= udg_ClsR_RocketsInterval then
                            // Launch rocket
                            call ClsR_LaunchRocket(index)
                            // Reset rocket launch timer
                            set udg_ClsR_realTimer2[index] = 0
                            
                            set udg_ClsR_Counter2[index] = udg_ClsR_Counter2[index] + 1
                            if udg_ClsR_Counter2[index] >= udg_ClsR_RocketsPerWave then
                                // Reset wave timer
                                set udg_ClsR_realTimer[index] = udg_ClsR_DelayPerWave
                                // Reset rocket-per-wave counter
                                set udg_ClsR_Counter2[index] = 0
                            endif
                            
                        endif
                        
                    endif
                else
                    // --- When caster finished channeling or all rockets has launched
                    set casterHandleID = GetHandleId(udg_ClsR_Caster[index])
                    // Unmark caster from 'channeling' state
                    call SaveBoolean(udg_ClsR_Hashtable, casterHandleID, 1, false)
                    if not LoadBoolean(udg_ClsR_Hashtable, casterHandleID, 0) and ClsR_IsUnitChanneling(udg_ClsR_Caster[index]) and udg_ClsR_Counter[index] == 0 then
                        call IssueImmediateOrderById(udg_ClsR_Caster[index], 851972)
          else
            call SaveBoolean(udg_ClsR_Hashtable, casterHandleID, 0, false)
                    endif
                    call ClsR_Destroy(index)
                endif
            else
                // --- When caster died
                // Unmark caster from 'channeling' state
                call SaveBoolean(udg_ClsR_Hashtable, GetHandleId(udg_ClsR_Caster[index]), 1, false)
                call ClsR_Destroy(index)
            endif
        
        // Stage 2: Handle rockets, determines movement
        elseif udg_ClsR_Stage[index] == 2 then
            
            if udg_ClsR_realTimer[index] > 0 then
                // Update rocket expiration timer
                set udg_ClsR_realTimer[index] = udg_ClsR_realTimer[index] - ClsR_FrameUpdate()
                
                // Copy 3D position to local reference variables
                set sourceX = udg_ClsR_posX[index]
                set sourceY = udg_ClsR_posY[index]
                set sourceZ = udg_ClsR_posZ[index]
                
                // Check if there's a target unit to pursue
                if udg_ClsR_Target[index] != null and ClsR_IsUnitAlive(udg_ClsR_Target[index]) then
                    set targetX = GetUnitX(udg_ClsR_Target[index])
                    set targetY = GetUnitY(udg_ClsR_Target[index])
                    set targetZ = ClsR_GetUnitZAlt(udg_ClsR_Target[index], targetX, targetY)
                    
                    // Save target last known position
                    set udg_ClsR_lastX[index] = targetX
                    set udg_ClsR_lastY[index] = targetY
                    set udg_ClsR_lastZ[index] = targetZ
                else
                    // If target has disappear, use the last known position
                    set targetX = udg_ClsR_lastX[index]
                    set targetY = udg_ClsR_lastY[index]
                    set targetZ = udg_ClsR_lastZ[index]
                endif
                
                // Calculate difference
                set tempX = targetX - sourceX
                set tempY = targetY - sourceY
                set tempZ = targetZ - sourceZ
                
                if udg_ClsR_Target[index] != null and ClsR_IsUnitAlive(udg_ClsR_Target[index]) and ClsR_GetMagnitude3D(tempX, tempY, tempZ)-udg_ClsR_RocketsCollisionSize <= udg_ClsR_targetCollision[index] then
                    // --- When target is alive and is in collision range
                    call ClsR_TerminateRocket(index)
                else
                    set dist = ClsR_GetMagnitude2D(tempX, tempY)
                    set angle = ClsR_GetAngle2D(tempX, tempY)
                    set angleZ = ClsR_GetAngle3D(dist, tempZ)
                    
                    // Get new 3D position
                    set targetX = sourceX + udg_ClsR_RocketsSpeedBase[udg_ClsR_Level[index]] * Cos(udg_ClsR_Facing[index]) * Cos(udg_ClsR_FacingZ[index])
                    set targetY = sourceY + udg_ClsR_RocketsSpeedBase[udg_ClsR_Level[index]] * Sin(udg_ClsR_Facing[index]) * Cos(udg_ClsR_FacingZ[index])
                    set targetZ = sourceZ + udg_ClsR_RocketsSpeedBase[udg_ClsR_Level[index]] * Sin(udg_ClsR_FacingZ[index])
                    set udg_ClsR_posX[index] = targetX + udg_ClsR_RocketsTurnAcceleration[udg_ClsR_Level[index]] * Cos(angle) * Cos(angleZ)
                    set udg_ClsR_posY[index] = targetY + udg_ClsR_RocketsTurnAcceleration[udg_ClsR_Level[index]] * Sin(angle) * Cos(angleZ)
                    set udg_ClsR_posZ[index] = targetZ + udg_ClsR_RocketsTurnAcceleration[udg_ClsR_Level[index]] * Sin(angleZ)
                    
                    // Calculate difference
                    set tempX = udg_ClsR_posX[index] - sourceX
                    set tempY = udg_ClsR_posY[index] - sourceY
                    set tempZ = udg_ClsR_posZ[index] - sourceZ
                    
                    // Get new 3D angle
                    set udg_ClsR_Facing[index] = ClsR_GetAngle2D(tempX, tempY)
                    set udg_ClsR_FacingZ[index] = ClsR_GetAngle3D(ClsR_GetMagnitude2D(tempX, tempY), tempZ)
                    
                    // Get bounded coordinates
                    set udg_ClsR_posX[0] = ClsR_BoundX(udg_ClsR_posX[index])
                    set udg_ClsR_posY[0] = ClsR_BoundX(udg_ClsR_posY[index])
                    
                    // Apply new position
                    call SetUnitX(udg_ClsR_Rocket[index], udg_ClsR_posX[0])
                    call SetUnitY(udg_ClsR_Rocket[index], udg_ClsR_posY[0])
                    call ClsR_SetUnitZAlt(udg_ClsR_Rocket[index], udg_ClsR_posZ[index], udg_ClsR_posX[0], udg_ClsR_posY[0])
                    
                    // Apply new angle
                    call SetUnitFacing(udg_ClsR_Rocket[index], udg_ClsR_Facing[index]*ClsR_Rad2Deg())
                    call ClsR_SetUnitPitch(udg_ClsR_Rocket[index], udg_ClsR_FacingZ[index])
                    
                    if GetUnitFlyHeight(udg_ClsR_Rocket[index]) <= udg_ClsR_RocketsCrashHeight then
                        // --- When rocket touch the ground
                        call ClsR_TerminateRocket(index)
                    elseif not udg_ClsR_HitTargetOnly then
                        // Enumerate all units near the rocket
                        call GroupEnumUnitsInRange(udg_ClsR_tempGroup, udg_ClsR_posX[index], udg_ClsR_posY[index], udg_ClsR_RocketsCollisionSize+ClsR_CollisionScanRange(), null)
                        loop
                            set enumUnit = FirstOfGroup(udg_ClsR_tempGroup)
                            exitwhen enumUnit == null
                            
                            // Check if the rocket has hit a unit
                            if ClsR_GetDistanceToUnit3D(udg_ClsR_posX[index], udg_ClsR_posY[index], udg_ClsR_posZ[index], enumUnit)-udg_ClsR_RocketsCollisionSize <= ClsR_GetUnitCollisionSize(enumUnit) then
                                
                                if enumUnit != udg_ClsR_Caster[index] and ClsR_IsUnitAlive(enumUnit) and ClsR_CollisionFilter(enumUnit, udg_ClsR_casterOwner[index]) then
                                    // --- Exclude caster and dead units
                                    // --- When the rocket collide with filtered units
                                    call ClsR_TerminateRocket(index)
                                    
                                    set enumUnit = null
                                    exitwhen true
                                endif
                                
                            endif
                            
                            call GroupRemoveUnit(udg_ClsR_tempGroup, enumUnit)
                        endloop
                        call GroupClear(udg_ClsR_tempGroup)
                        
                    endif
                    
                endif
            else
                // --- When rocket expiration timer finished
                call ClsR_TerminateRocket(index)
            endif
            
        endif
        
    endloop
    
endfunction

//---------------------------------------------------------------------------
// Function to find any unit that casts the spell.
function ClsR_onEffect takes nothing returns boolean
    // Declare locals
    local integer casterIndex
    local integer casterHandleID
    local unit targetUnit
    local real targetX
    local real targetY
    
    if GetSpellAbilityId() == udg_ClsR_Ability then
        set udg_ClsR_Caster[0] = GetTriggerUnit()
        
        set casterIndex = ClsR_Create()
        set casterHandleID = GetHandleId(udg_ClsR_Caster[0])
        
        call SaveBoolean(udg_ClsR_Hashtable, casterHandleID, 0, false)
        // Mark caster as 'channeling'
        call SaveBoolean(udg_ClsR_Hashtable, casterHandleID, 1, true)
        // Save index to end this instance when the caster starts another one
        call SaveInteger(udg_ClsR_Hashtable, casterHandleID, 1, casterIndex)
        
        set udg_ClsR_Caster[casterIndex] = udg_ClsR_Caster[0]
        set udg_ClsR_casterOwner[casterIndex] = GetTriggerPlayer()
        set udg_ClsR_Level[casterIndex] = GetUnitAbilityLevel(udg_ClsR_Caster[casterIndex], udg_ClsR_Ability)
        
        set targetUnit = GetSpellTargetUnit()
        // Note: When target type in Object Editor is set to "Instant
        //   (No Target)", GetSpellTargetUnit returns the caster.
    if targetUnit == udg_ClsR_Caster[0] then
      set udg_ClsR_targetType[casterIndex] = 0
      set udg_ClsR_posX[casterIndex] = GetUnitX(udg_ClsR_Caster[0])
      set udg_ClsR_posY[casterIndex] = GetUnitY(udg_ClsR_Caster[0])
    elseif targetUnit != null then
      set udg_ClsR_targetType[casterIndex] = 1
      set udg_ClsR_Target[casterIndex] = targetUnit
      set udg_ClsR_targetCollision[casterIndex] = ClsR_GetUnitCollisionSize(targetUnit)
      set udg_ClsR_posX[casterIndex] = GetUnitX(targetUnit)
      set udg_ClsR_posY[casterIndex] = GetUnitY(targetUnit)
      set udg_ClsR_posZ[casterIndex] = ClsR_GetUnitZAlt(targetUnit, udg_ClsR_posX[casterIndex], udg_ClsR_posY[casterIndex])
    else
      set udg_ClsR_targetType[casterIndex] = 2
      set udg_ClsR_Target[casterIndex] = null
      set udg_ClsR_posX[casterIndex] = GetSpellTargetX()
      set udg_ClsR_posY[casterIndex] = GetSpellTargetY()
      set udg_ClsR_posZ[casterIndex] = ClsR_GetTerrainZ(udg_ClsR_posX[casterIndex], udg_ClsR_posY[casterIndex])
    endif
        set targetUnit = null
        
        // Set up wave interval timer
        set udg_ClsR_realTimer[casterIndex] = udg_ClsR_FirstWaveDelay - ClsR_FrameUpdate()
        // Set up rocket launch interval timer
        set udg_ClsR_realTimer2[casterIndex] = ClsR_FrameUpdate()
        
        if udg_ClsR_CountRockets then
            // Set up launched rockets counter
            set udg_ClsR_Counter[casterIndex] = udg_ClsR_RocketsCount[udg_ClsR_Level[casterIndex]]
        else
            // Give a signal not to count launched rockets
            set udg_ClsR_Counter[casterIndex] = -1
        endif
        // Set up rocket-per-wave counter
        set udg_ClsR_Counter2[casterIndex] = 0
        
        // Stage 1 - Handle spell channeling, launches rockets
        set udg_ClsR_Stage[casterIndex] = 1
        
        if udg_ClsR_Prev[casterIndex] == 0 then
            // --- When no instances ever activated
            call TimerStart(udg_ClsR_Timer, ClsR_FrameUpdate(), true, function ClsR_Periodic)
        endif
    endif
    
    return false
endfunction

//---------------------------------------------------------------------------
// Function to pre-cast the spell.
function ClsR_PrecastSpell takes integer casterHandleID returns nothing
    // End previous spell channeling instance
  set udg_ClsR_Counter[LoadInteger(udg_ClsR_Hashtable, casterHandleID, 1)] = 0
    //call ClsR_Destroy(LoadInteger(udg_ClsR_Hashtable, casterHandleID, 1))
    
    // Mark unit before it starts casting the spell
    // Note: Since the caster will be ordered to 'stop' when launched rockets
    //   reaches a limit, this one will helps ignore that action when the
    //   caster start another instance.
    call SaveBoolean(udg_ClsR_Hashtable, casterHandleID, 0, true)
endfunction

//---------------------------------------------------------------------------
// Function to find any unit that is about to cast the spell (No target).
function ClsR_onCast takes nothing returns boolean
    // Declare locals
    local integer casterHandleID
    
    if GetSpellAbilityId() == udg_ClsR_Ability then
        set casterHandleID = GetHandleId(GetTriggerUnit())
        
        // Check if the caster is already channeling the spell
        if LoadBoolean(udg_ClsR_Hashtable, casterHandleID, 1) then
            call ClsR_PrecastSpell(casterHandleID)
        endif
    endif
    
    return false
endfunction

//---------------------------------------------------------------------------
// Function to find any unit that is about to cast the spell (Unit or point
//   target).
function ClsR_onOrder takes nothing returns boolean
    // Declare locals
    local integer casterHandleID
    
    if GetUnitCurrentOrder(GetTriggerUnit()) == udg_ClsR_AbilityOrder then
        // Note: This function is also executed when a caster learn the spell
        //   while channeling.
        set casterHandleID = GetHandleId(GetTriggerUnit())
        
        // Check if the caster is already channeling the spell
        if LoadBoolean(udg_ClsR_Hashtable, casterHandleID, 1) then
            call ClsR_PrecastSpell(casterHandleID)
        endif
    endif
    
    return false
endfunction

//---------------------------------------------------------------------------
// Function to initialize spell properties.
function ClsR_Initialize takes nothing returns nothing
    local integer i = 0
    local trigger trig = CreateTrigger()
    local rect map
    
    if ClsR_BoundsEntireMap() then
        set map = GetWorldBounds()
    else
        set map = bj_mapInitialPlayableArea
    endif
    set udg_ClsR_mapBorder[1] = GetRectMaxX(map)
    set udg_ClsR_mapBorder[2] = GetRectMaxY(map)
    set udg_ClsR_mapBorder[3] = GetRectMinX(map)
    set udg_ClsR_mapBorder[4] = GetRectMinY(map)
    call RemoveRect(map)
    
    // Convert pitch angle from degree to radian
    set udg_ClsR_RocketsMaxPitchVariation = udg_ClsR_RocketsMaxPitchVariation * ClsR_Deg2Rad()
    set udg_ClsR_RocketsMinPitchVariation = udg_ClsR_RocketsMinPitchVariation * ClsR_Deg2Rad()
    
    set udg_ClsR_RocketsInterval = 1 / I2R(udg_ClsR_RocketsPerSecond)
    
    // Initialize additional properties
    loop
        set i = i + 1
        exitwhen i > udg_ClsR_AbilityLevels
        
        set udg_ClsR_RocketsSpeedBase[i] = udg_ClsR_RocketsSpeedBase[i] * ClsR_FrameUpdate()
        set udg_ClsR_RocketsTurnAcceleration[i] = udg_ClsR_RocketsTurnAcceleration[i] * ClsR_FrameUpdate()
    endloop
    
    // Initialize terrain z finder
    if udg_ClsR_ZLocator == null then
        set udg_ClsR_ZLocator = Location(0, 0)
    endif
    // Initialize spell hashtable
    if udg_ClsR_Hashtable == null then
        set udg_ClsR_Hashtable = InitHashtable()
    endif
    // Initialize iteration timer
    if udg_ClsR_Timer == null then
        set udg_ClsR_Timer = CreateTimer()
    endif
    // Initialize dummy group
    if udg_ClsR_tempGroup == null then
        set udg_ClsR_tempGroup = CreateGroup()
    endif
    
    if ClsR_PreloadSpell() then
        // Preload files
        call Preload(udg_ClsR_RocketsModel)
        set udg_ClsR_Rocket[0] = CreateUnit(ClsR_DummiesOwner(), udg_ClsR_Dummy, 0, 0, 0)
        call UnitAddAbility(udg_ClsR_Rocket[0], udg_ClsR_Ability)
        call KillUnit(udg_ClsR_Rocket[0])
    endif
    
    if udg_ClsR_NoTarget then
        // Register a trigger for when a unit cast the spell
        call TriggerRegisterAnyUnitEventBJ(trig, EVENT_PLAYER_UNIT_SPELL_CAST)
        call TriggerAddCondition(trig, Condition(function ClsR_onCast))
    else
        // Register a trigger for when a unit is ordered to cast the spell
        call TriggerRegisterAnyUnitEventBJ(trig, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
        call TriggerRegisterAnyUnitEventBJ(trig, EVENT_PLAYER_UNIT_ISSUED_POINT_ORDER)
        call TriggerAddCondition(trig, Condition(function ClsR_onOrder))
    endif
endfunction

//===========================================================================
// This function automatically runs on map initialization.
function InitTrig_Cluster_Rockets takes nothing returns nothing
    set gg_trg_Cluster_Rockets = CreateTrigger()
    
    call TriggerRegisterAnyUnitEventBJ(gg_trg_Cluster_Rockets, EVENT_PLAYER_UNIT_SPELL_EFFECT)
    call TriggerAddCondition(gg_trg_Cluster_Rockets, Condition(function ClsR_onEffect))
endfunction

