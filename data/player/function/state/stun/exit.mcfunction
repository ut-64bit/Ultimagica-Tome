# フラグを折る
	tag @s remove Player.Stun

# 動けるようにする
	attribute @s movement_speed modifier remove player:stun

# 行動不可を解除
	function player_manager:action_block/remove_id {id:"stun"}

# GPを回復する
	data modify storage api: in set value {Amount:9999}
	function api:guard_power/recover

# 演出
	playsound block.anvil.land player @a ~ ~ ~ 0.6 2.0
