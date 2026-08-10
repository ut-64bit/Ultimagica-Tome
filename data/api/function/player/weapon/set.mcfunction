#> api:player/weapon/set
#
# プレイヤーの武器種を設定する
# 引数: {type:"武器種"}
#

execute unless entity @s[type=player] run return fail

# OhMyDatからデータを呼び出す
	function player_manager:common/this/stash
	function oh_my_dat:please
	data modify storage player:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player

# 実行
	$function player_manager:weapon/set {type:"$(type)"}

# OhMyDatにデータを戻す
	function oh_my_dat:please
	data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player set from storage player:context this
	function player_manager:common/this/pop

return 1
