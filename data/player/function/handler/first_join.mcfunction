#> player:handler/first_join
#
# 初回参加時に実行される関数
#
# @handler

# PlayTrackerのタグを付与する
	tag @s add FirstJoin

# プレイヤーを初期化する
	function lib:entity_id/get
	function player:init
	function oh_my_dat:please
	data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Weapon.Type set value "basic_rod"

	function api:player/fsm/start {state:"idle"}
