#> asset:attack/water_ray/charge_main/
#
# チャージ中に呼ばれるメソッド
#

particle enchant ~ ~1 ~ 0.3 0.5 0.3 1 1 normal @a
particle witch ~ ~0.1 ~ 0.1 0 0.1 1 1 force @a
execute anchored eyes positioned ^ ^-0.32 ^0.5 run function asset:attack/water_ray/charge_main/vfx/
