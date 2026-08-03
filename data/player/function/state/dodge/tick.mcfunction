#
	scoreboard players remove @s Dodge.Duration 1
	execute unless score @s Dodge.Duration matches 1.. run function player_manager:fsm/request {state:"idle"}

# 演出
	execute unless predicate lib:flag/swimming run particle instant_effect{color:1677311} ~ ~1 ~ 0.3 0.6 0.3 0 3 force
	execute if predicate lib:flag/swimming run particle bubble ^ ^ ^1 0.3 0.3 0.3 0 5 normal @a
