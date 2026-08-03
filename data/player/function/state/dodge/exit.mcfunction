# フラグを折る
	tag @s remove Player.Dodge

# modifier削除
	attribute @s gravity modifier remove player:dodge
	attribute @s movement_speed modifier remove player:dodge

# 行動不可を解除
	function player_manager:action_block/remove {id:"dodge",action:"guard"}
	function player_manager:action_block/remove {id:"dodge",action:"jump"}
