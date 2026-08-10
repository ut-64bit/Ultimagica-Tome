#> api:player/attack/set
#
# 攻撃を設定する
#
# @input
#	storage api: in.ID
#		: string
#
# @api

# validate
	execute unless data storage api: in.ID run return fail
	execute unless entity @s[type=player] run return fail

# OhMyDatからデータを呼び出す
	function player_manager:common/this/stash
	function oh_my_dat:please
	data modify storage player:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player

# 設定する
	data remove storage api: out.Result
	execute store result storage api: out.Result int 1 run function player_manager:attack/set with storage api: in

# OhMyDatにデータを戻す
	function oh_my_dat:please
	data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player set from storage player:context this
	function player_manager:common/this/pop

return run data get storage api: out.Result
