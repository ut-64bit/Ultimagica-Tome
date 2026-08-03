#> asset:attack/thunder_strike/attack_main/
#

execute if score @s AttackTime matches 3 run playsound t_magic:electric_shock player @a ~ ~ ~ 1.3 1
execute if score @s AttackTime matches 6 run function asset:attack/thunder_strike/attack_main/shot

# ロックオンマーカーを表示する
	execute if data storage asset:context this.TargetID run function asset:attack/_common/vfx/lockon_marker

execute if score @s AttackTime matches 15.. run data modify storage asset:context State set value "standby"
