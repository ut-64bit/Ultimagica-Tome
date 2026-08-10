#> player_manager:attack/cancel
#
# 攻撃をキャンセルする
#

execute unless data storage player:context this.StateMachine.state_data.AttackID run return 0

function player_manager:attack/reset_combo
data modify storage player:context this.StateMachine.state_data.Canceled set value true
function player_manager:fsm/request {state:"idle"}
return run function player_manager:fsm/flush
