#> asset:item/magic_rod/unequip/
#
# 外したときに呼び出されるメソッド
#

#
	execute if data storage player:context this{AttackState:"charge"} run scoreboard players add @s HardCoolTime 10

# 攻撃をキャンセルする
	execute unless data storage player:context this{AttackState:"attack"} run function api:attack/cancel
