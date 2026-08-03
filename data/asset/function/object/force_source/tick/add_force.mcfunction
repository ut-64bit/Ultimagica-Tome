#> asset:object/force_source/tick/add_force
#

execute unless data storage asset:context this{IsExecuted:true} store result score $strength hb.Motion run data get storage asset:context this.Power 10000
execute if data storage asset:context this{IsExecuted:true} if predicate lib:flag/on_ground store result score $strength hb.Motion run data get storage asset:context this.Power 4540
execute if data storage asset:context this{IsExecuted:true} unless predicate lib:flag/on_ground store result score $strength hb.Motion run data get storage asset:context this.Power 900

execute unless predicate lib:flag/on_ground run scoreboard players operation $strength hb.Motion /= #c_2 const

function #p_motion:looking

execute unless data storage asset:context this{IsExecuted:true} run data modify storage asset:context this.IsExecuted set value true
