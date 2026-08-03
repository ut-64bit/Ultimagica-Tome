#> asset:item/magic_rod/unequip/
#
# 外したときに呼び出されるメソッド
#

# 攻撃をキャンセルする
	execute unless data storage player:context this.StateMachine{current:"attack_main"} if data storage player:context this.StateMachine.state_data.AttackID run function api:attack/cancel
