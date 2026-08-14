#> asset:object/atk.water_ray_base/tick/
#
# Tick処理
#

function asset:object/interface.attackable/get_owner

scoreboard players add @s General.Tick 1

# ゆっくり回るよ
	execute positioned ^ ^ ^-40 rotated as @n[tag=_owner,distance=..1000] positioned ^ ^ ^-10 facing entity @s feet run rotate @s ~ ~
	execute at @s as @n[tag=_owner,distance=..1000] positioned as @s anchored eyes positioned ^ ^-0.32 ^0.5 run tp @n[tag=_this,distance=..1000] ~ ~ ~

# 発射
	function asset:object/atk.water_ray_base/tick/shot
	function lib:interval/ {Tick:6,Offset:0}
	execute if score $Interval _ matches 0 run function asset:object/atk.water_ray_base/tick/create_attack_data

# 演出
	execute if score @s General.Tick matches 1 positioned ^ ^ ^1 run function api:object/summon.m {ID:"particle.shock_wave_1"}

execute as @n[tag=_owner,distance=..1000] run tag @s remove _owner
