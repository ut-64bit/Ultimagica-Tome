#> player_manager:attack/is_canceled_transition
#
# FSM内部の遷移情報から、攻撃がキャンセルされたか判定する
#

# api:attack/cancelによる明示的なキャンセル
execute if data storage player:context this.StateMachine.state_data{Canceled:true} run return 1

# 攻撃状態間の正常な遷移
execute if data storage player:context this.StateMachine._transition{target:"attack_charge"} run return 0
execute if data storage player:context this.StateMachine._transition{target:"attack_hold"} run return 0
execute if data storage player:context this.StateMachine._transition{target:"attack_main"} run return 0

# attack_mainからidleへの遷移は正常終了
execute if data storage player:context this.StateMachine{current:"attack_main",_transition:{target:"idle"}} run return 0

# それ以外の攻撃外への遷移はキャンセル
return 1
