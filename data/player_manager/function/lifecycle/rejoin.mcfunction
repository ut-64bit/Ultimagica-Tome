#> player_manager:lifecycle/rejoin
#

# リセット
	scoreboard players set @s PlayTracker.Rejoin 0

# player_manager:tickで読み込み済みのコンテキストを使って初期化する。
	function player_manager:init

# ロビーへの再参加
	execute if data storage world_manager:game {state:"lobby"} run function world_manager:lobby/teleport.m with storage world_manager:game config.lobby

# 準備完了を解除する
	function world_manager:game/player/clear_ready
