#> asset:object/proj.crystal_wave/tick/
#
# Tick処理
#

function asset:object/interface.attackable/get_owner

scoreboard players add @s General.Tick 1

# エンティティへの衝突
	execute if score @s General.Tick matches 15.. run function asset:object/proj.crystal_wave/tick/detect_hit_entity

# 演出
	execute if score @s General.Tick matches 2 run data merge entity @s {transformation:{scale:[1.5,1.2,1.5]},interpolation_duration:25,start_interpolation:0}
	execute if score @s General.Tick matches ..30 run function asset:object/proj.crystal_wave/tick/vfx.m with entity @s
	execute if score @s General.Tick matches ..35 run particle enchant ~ ~0.3 ~ 0.5 0.5 0.5 0 1 normal
	execute if score @s General.Tick matches 35 run playsound block.amethyst_block.place player @a ~ ~ ~ 0.4 1.1

# 残り時間が0になったらオブジェクトを削除する
	execute store result storage asset:context this.Duration int 0.9999999999 run data get storage asset:context this.Duration
	execute if data storage asset:context this{Duration:0} run function api:common/auto_kill

execute as @n[tag=_owner,distance=..1000] run tag @s remove _owner
