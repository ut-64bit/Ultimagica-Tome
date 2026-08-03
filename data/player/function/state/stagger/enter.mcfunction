#> player:state/stagger/enter
#

execute store result score @s StaggerTime run data get storage player:context this.StateMachine.state_data.Duration
execute unless score @s StaggerTime matches 1.. run scoreboard players set @s StaggerTime 1

# 怯み中の移動と行動を制限する
attribute @s movement_speed modifier add player:stagger -0.4 add_multiplied_base
function player_manager:action_block/add {id:"stagger",action:"attack"}
function player_manager:action_block/add {id:"stagger",action:"guard"}
function player_manager:action_block/add {id:"stagger",action:"dodge"}
