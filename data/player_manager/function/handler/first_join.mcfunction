#> player_manager:handler/first_join
#
# 初回参加時に実行される関数
#
# @handler

# PlayTrackerのタグを付与する
	tag @s add FirstJoin

# プレイヤーを初期化する
	function lib:entity_id/get
	function api:player/init
	function api:player/weapon/set {type:"basic_rod"}

	function api:player/fsm/start {state:"idle"}
