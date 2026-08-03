#> player:state/stagger/exit
#

attribute @s movement_speed modifier remove player:stagger
function player_manager:action_block/remove {id:"stagger",action:"attack"}
function player_manager:action_block/remove {id:"stagger",action:"guard"}
function player_manager:action_block/remove {id:"stagger",action:"dodge"}
