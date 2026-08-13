#> asset:object/object.water_rain_cloud/tick/
#
# 毎tick呼び出されるメソッド
#

# 発射者を取得する
	function asset:object/interface.attackable/get_owner

# 発射
	scoreboard players add @s General.Tick 1
	scoreboard players operation #t_Interval _ = @s General.Tick
	scoreboard players operation #t_Interval _ %= #c_6 const

	execute if score #t_Interval _ matches 0 run playsound weather.rain.above neutral @a ~ ~ ~ 1.8 1
	function asset:object/proj.water_rain_cloud/tick/shot/
	function asset:object/proj.water_rain_cloud/tick/shot/

	scoreboard players reset #t_Interval _

# 演出
	particle falling_water ^ ^ ^ 3 0 3 0 2 normal
	particle falling_water ^ ^ ^ 3 0 3 0 1 force
	particle dust{color:3481599,scale:3.0} ^ ^ ^ 4 0 4 0 1 force
	particle cloud ^ ^ ^ 4 0.4 4 0 6 force

# 残り時間が0になったらオブジェクトを削除する
	execute store result storage asset:context this.Duration int 0.9999999999 run data get storage asset:context this.Duration
	execute if data storage asset:context this{Duration:0} run function api:common/auto_kill

# あとしまつ
	execute as @n[tag=_owner,distance=..1000] run tag @s remove _owner
