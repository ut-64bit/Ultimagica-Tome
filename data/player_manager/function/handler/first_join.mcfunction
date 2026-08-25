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

# ロビーへの初回参加
	execute if data storage world_manager:game {state:"lobby"} run function world_manager:lobby/teleport
