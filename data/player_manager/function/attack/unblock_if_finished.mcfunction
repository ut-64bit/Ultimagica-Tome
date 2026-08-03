#> player_manager:attack/unblock_if_finished
#
# 攻撃状態間の遷移では行動制限を引き継ぐ
#

execute if data storage player:context this.StateMachine._transition{target:"attack_charge"} run return 0
execute if data storage player:context this.StateMachine._transition{target:"attack_hold"} run return 0
execute if data storage player:context this.StateMachine._transition{target:"attack_main"} run return 0

function player_manager:attack/unblock_actions
attribute @s movement_speed modifier remove player:cooltime
