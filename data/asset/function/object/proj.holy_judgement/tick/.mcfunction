#> asset:object/object.holy_judgement/tick/
#
# 毎tick呼び出されるメソッド
#

# 発射者を取得する
	function asset:object/interface.attackable/get_owner

# 発射
	scoreboard players add @s General.Tick 1
	function lib:interval/ {Tick:4,Offset:1}
	execute if score @s General.Tick matches 30..80 if score $Interval _ matches 0 run function asset:object/proj.holy_judgement/tick/shot/

# 演出
	execute if score @s General.Tick matches 2 run data merge entity @s {transformation:{scale:[4f,4f,4f],left_rotation:{axis:[0,0,1],angle:1.5}},interpolation_duration:20,start_interpolation:0}
	execute if score @s General.Tick matches 80 run data merge entity @s {transformation:{scale:[0f,0f,0f],left_rotation:{axis:[0,0,1],angle:1.5}},interpolation_duration:10,start_interpolation:0}
	function lib:interval/ {Tick:20,Offset:1}
	execute if score $Interval _ matches 0 run playsound block.beacon.activate player @a ~ ~ ~ 1 2
	particle end_rod ~ ~0.5 ~ 1 0 1 0 5 force
	execute if score @s General.Tick matches 10..20 run particle flash{color:-1} ~ ~ ~ 1 0 1 0 1 force
	execute if score @s General.Tick matches 20..70 run particle flash{color:-1} ~ ~ ~ 4 0 4 0 3 force
	execute if score @s General.Tick matches 70..80 run particle flash{color:-1} ~ ~ ~ 1 0 1 0 1 force
	execute if score @s General.Tick matches ..20 if block ~ ~0.5 ~ #lib:no_collision run tp @s ~ ~0.5 ~
	execute if score @s General.Tick matches 20 run playsound block.bell.use player @a ~ ~ ~ 1.5 2


# 残り時間が0になったらオブジェクトを削除する
	execute store result storage asset:context this.Duration int 0.9999999999 run data get storage asset:context this.Duration
	execute if data storage asset:context this{Duration:0} run function api:common/auto_kill

# あとしまつ
	execute as @n[tag=_owner,distance=..1000] run tag @s remove _owner
