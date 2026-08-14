#> asset:object/proj.magic_turret/tick/state_idle/
#

scoreboard players add @s General.Tick 1

# ホーミング
	execute as @n[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,tag=!Player.NoCollison,distance=..15] run tag @s add _target
	execute positioned ^ ^ ^-20 facing entity @n[tag=_target,distance=..1000] eyes run rotate @s ~ ~
	execute as @n[tag=_target,distance=..1000] run tag @s remove _target

# 発射
	function lib:interval/ {Tick:8,Offset:5}
	execute if score @s General.Tick matches 5..85 if score $Interval _ matches 0 run function asset:object/proj.magic_turret/tick/state_idle/shot

# 演出
	execute if score @s General.Tick matches 1 run data merge entity @s {transformation:{scale:[1.5f,1.5f,1.5f]},interpolation_duration:3,start_interpolation:0}
	execute if data storage asset:context this{Duration:60} run data merge entity @s {transformation:{scale:[0.5,0.5,0.5]},interpolation_duration:60,start_interpolation:0}
	execute if data storage asset:context this{Duration:4} run data merge entity @s {transformation:{scale:[0,0,0]},interpolation_duration:4,start_interpolation:0}

# 残り時間が0になったらオブジェクトを削除する
	execute store result storage asset:context this.Duration int 0.9999999999 run data get storage asset:context this.Duration
	execute if data storage asset:context this{Duration:0} run function api:common/auto_kill
