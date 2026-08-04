#
	scoreboard players remove @s Dodge.Duration 1
	execute unless score @s Dodge.Duration matches 1.. run function player_manager:fsm/request {state:"idle"}

# 演出
	execute unless predicate lib:flag/swimming run function player_manager:invincibility/ground_particle
	execute if predicate lib:flag/swimming run particle bubble ^ ^ ^1 0.3 0.3 0.3 0 5 normal @a
