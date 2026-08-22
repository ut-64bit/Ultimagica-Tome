#> asset:attack/holy_beam/charge_main/
#
# チャージ中に呼ばれるメソッド
#

# 演出
	particle enchant ~ ~1 ~ 0.3 0.5 0.3 1 1 normal @a
	particle witch ~ ~0.1 ~ 0.1 0 0.1 1 1 force @a

# 止める
	execute if score @s ChargePhase matches 2 run function lib:motion/reset
