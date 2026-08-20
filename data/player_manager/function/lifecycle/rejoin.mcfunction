#> player_manager:lifecycle/rejoin
#

# リセット
	scoreboard players set @s PlayTracker.Rejoin 0

# player_manager:tickで読み込み済みのコンテキストを使って初期化する。
	function player_manager:init

# ロビーへの再参加
	execute if data storage world_manager:game {state:"lobby"} run function world_manager:lobby/teleport.m with storage world_manager:game config.lobby
