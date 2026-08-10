#> lib:_system/load
#

# スコアボードを宣言する
	#> 一時変数
	scoreboard objectives add _ dummy
	scoreboard objectives add lib dummy
	#> 定数
	scoreboard objectives add const dummy
	#> グローバル変数
	scoreboard objectives add Global dummy

	scoreboard objectives add EntityID dummy

# 定数を定義する
	function lib:_system/const
