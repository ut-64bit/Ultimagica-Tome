#> player:state/stagger/tick
#

scoreboard players remove @s StaggerTime 1
execute unless score @s StaggerTime matches 1.. run function player_manager:fsm/request {state:"idle"}
