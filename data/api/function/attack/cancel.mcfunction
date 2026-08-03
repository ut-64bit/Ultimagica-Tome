#> api:attack/cancel
#
# 攻撃をキャンセルする
#

execute unless data storage player:context this.StateMachine.state_data.AttackID run return 0

scoreboard players set @s ComboTimer 0
function player_manager:fsm/request {state:"idle"}
return run function player_manager:fsm/flush
