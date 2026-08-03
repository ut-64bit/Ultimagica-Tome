#> player:action/stun/end
#

# フラグを折る
	tag @s remove Stun

# 動けるようにする
	attribute @s movement_speed modifier remove player:stun

# GPを回復する
	data modify storage api: in set value {Amount:9999}
	function api:guard_power/recover

# 演出
	playsound block.anvil.land player @a ~ ~ ~ 0.6 2.0
