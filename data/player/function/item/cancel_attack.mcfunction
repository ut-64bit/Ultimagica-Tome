#> player:item/cancel_attack
#
# アイテムを持ち替えたとき、実行中の攻撃をキャンセルする
#

# attack_mainまで進んだ攻撃は最後まで実行する
execute unless data storage player:context this.StateMachine{current:"attack_main"} if data storage player:context this.StateMachine.state_data.AttackID run function api:attack/cancel
