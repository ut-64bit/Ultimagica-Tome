# 現在の状態のexitを呼び出した後、ステートマシンを削除します。
execute unless data storage player:context this.StateMachine.current run return 0

function player_manager:fsm/_core/call_exit with storage player:context this.StateMachine
data remove storage player:context this.StateMachine
return 1
