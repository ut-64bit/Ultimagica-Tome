#> asset:attack/holy_spire/charge_main/
#
# チャージ中に呼ばれるメソッド
#

particle enchant ~ ~1 ~ 0.3 0.5 0.3 1 1 normal @a
particle witch ~ ~0.1 ~ 0.1 0 0.1 1 1 force @a
execute if score @s ChargeTime matches 4.. positioned ~ ~1.3 ~ positioned ^-0.4 ^ ^1.5 run function asset:attack/holy_spire/charge_main/vfx/
