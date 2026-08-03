# 入力処理のサンプルです。攻撃状態へ即座に遷移します。
execute unless data storage player:context this.Actions{CanAttack:1b} run return 0
function player_manager:fsm/request {state:"fsm_example:state/attack"}
return run function player_manager:fsm/flush
