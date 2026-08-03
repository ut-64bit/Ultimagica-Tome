#> asset:object/effect.holy_bind/tick/
#
# 毎tick呼び出されるメソッド
#

function asset:object/interface.attackable/get_target

# ターゲットがいないなら削除する
	execute unless entity @n[tag=_target,distance=..1000] run function api:common/auto_kill

# 常にターゲットの場所に移動する
	execute at @n[tag=_target,distance=..1000] run tp @s ~ ~ ~

scoreboard players add @s General.Tick 1
execute if score @s General.Tick matches 1 run attribute @n[tag=_target,distance=..1000] movement_speed modifier add asset:effect.holy_bind -0.3 add_multiplied_total
execute if score @s General.Tick matches 2 run data merge entity @s { transformation:{ scale:[1,1,1] }, text_opacity:255, interpolation_duration:3, start_interpolation:0 }
execute if score @s General.Tick matches 3 run playsound block.chain.place player @a ~ ~ ~ 1 0.6

# 残り時間が0になったらオブジェクトを削除する
	execute store result storage asset:context this.Duration int 0.9999999999 run data get storage asset:context this.Duration
	execute if data storage asset:context this{Duration:0} run function api:common/auto_kill

tag @n[tag=_target,distance=..1000] remove _target
