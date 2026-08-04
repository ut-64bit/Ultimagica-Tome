#> player:state/stagger/exit
#

attribute @s movement_speed modifier remove player:stagger
function player_manager:action_block/remove_id {id:"stagger"}
