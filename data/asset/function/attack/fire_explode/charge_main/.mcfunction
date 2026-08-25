#> asset:attack/fire_explode/charge_main/
#
# チャージ中に呼ばれるメソッド
#

particle enchant ~ ~1 ~ 0.3 0.5 0.3 1 1 normal @a
particle witch ~ ~0.1 ~ 0.1 0 0.1 1 1 force @a
playsound block.fire.extinguish player @a ~ ~ ~ 0.1 1

execute if score @s ChargeTime matches ..6 run function asset:attack/fire_explode/charge_main/particle_1
execute if score @s ChargeTime matches 6..10 run function asset:attack/fire_explode/charge_main/particle_2

execute if score @s ChargeTime matches 15 run function asset:attack/fire_explode/charge_main/particle_3
execute if score @s ChargeTime matches 20 run function asset:attack/fire_explode/charge_main/particle_3
execute if score @s ChargeTime matches 25 run function asset:attack/fire_explode/charge_main/particle_3
