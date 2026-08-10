#> core:system/load
#

# チーム
	#> Mob判別用のチーム
	# team add Null

# スコアボードを宣言する
	#> 一時変数
	scoreboard objectives add _ dummy
	#> グローバルな変数
	scoreboard objectives add Global dummy
	#> 汎用Tick
	scoreboard objectives add General.Tick dummy

# アイテム操作で使うシュル箱を設置する
	forceload add 10000 10000
	execute unless block 10000 0 10000 shulker_box run setblock 10000 0 10000 shulker_box

# 演算用のエンティティを召喚する
	forceload add -1 -1 0 0
	execute unless entity 0-0-0-0-0 run summon marker 0.0 0.0 0.0 {UUID:[I;0,0,0,0]}

# レジストリを初期化する
	execute unless data storage registry: _ run function asset_manager:registry/init

# ゲームルールを設定する
	gamerule max_command_forks 2147483647

# プレイヤーのload処理
	function player_manager:load
	function player:load

# ゲームシステムのload処理
	function world:game/load
