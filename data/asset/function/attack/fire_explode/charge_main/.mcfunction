#> asset:attack/fire_explode/charge_main/
#
# チャージ中に呼ばれるメソッド
#

particle enchant ~ ~1 ~ 0.3 0.5 0.3 1 1 normal @a
particle witch ~ ~0.1 ~ 0.1 0 0.1 1 1 force @a
playsound block.fire.extinguish player @a ~ ~ ~ 0.1 1
execute if score @s ChargeTime matches ..25 run particle flame ~ ~ ~ 1 0 1 0.1 10 force

execute if score @s ChargeTime matches 25..31 run function asset:attack/fire_explode/charge_main/particle_1
execute if score @s ChargeTime matches 31..35 run function asset:attack/fire_explode/charge_main/particle_2
execute if score @s ChargeTime matches 40 run function asset:attack/fire_explode/charge_main/particle_3
execute if score @s ChargeTime matches 45 run function asset:attack/fire_explode/charge_main/particle_3
execute if score @s ChargeTime matches 50 run function asset:attack/fire_explode/charge_main/particle_3

# 止める
	execute if score @s ChargePhase matches 1.. run function lib:motion/reset
