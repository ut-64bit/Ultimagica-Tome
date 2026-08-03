# フラグを立てる
	tag @s add Player.Dodge

# 行動不可
	function player_manager:action_block/add {id:"dodge",action:"guard"}
	function player_manager:action_block/add {id:"dodge",action:"jump"}

execute if predicate lib:flag/swimming run function player:state/dodge/swim
execute unless predicate lib:flag/swimming run function player:state/dodge/normal
