#> asset:object/proj.holy_beam_light/tick/state_idle/
#

scoreboard players add @s General.Tick 1

# 発射
	execute if score @s General.Tick matches ..5 run function asset:object/proj.holy_beam_light/tick/state_idle/macro

# 演出
	execute if data storage asset:context this{Duration:10} run data merge entity @s {transformation:{scale:[0,0,0]},interpolation_duration:10,start_interpolation:0}

# 残り時間が0になったらオブジェクトを削除する
	execute store result storage asset:context this.Duration int 0.9999999999 run data get storage asset:context this.Duration
	execute if data storage asset:context this{Duration:0} run function api:common/auto_kill
