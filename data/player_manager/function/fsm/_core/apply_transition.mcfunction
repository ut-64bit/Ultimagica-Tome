# exitを呼び出す前に、予約された遷移を退避して消費します。
# これによりexitやenterから予約された遷移は、次のtickまで保持されます。
execute unless data storage player:context this.StateMachine.current run return 0
execute unless data storage player:context this.StateMachine.transition.target run return 0

data modify storage player:context this.StateMachine._transition set from storage player:context this.StateMachine.transition
data remove storage player:context this.StateMachine.transition

# 引き継ぎ予約では、exit実行前の最新state_dataを遷移データとして退避します。
execute if data storage player:context this.StateMachine._transition{keep_data:1b} run data modify storage player:context this.StateMachine._transition.data set from storage player:context this.StateMachine.state_data

function player_manager:fsm/_core/call_exit with storage player:context this.StateMachine

# 状態コールバックから StateMachine.current を削除・直接変更しないでください。
execute unless data storage player:context this.StateMachine.current run return fail

data modify storage player:context this.StateMachine.previous set from storage player:context this.StateMachine.current
data modify storage player:context this.StateMachine.current set from storage player:context this.StateMachine._transition.target

data modify storage player:context this.StateMachine.state_data set value {}
data modify storage player:context this.StateMachine.state_data set from storage player:context this.StateMachine._transition.data

data modify storage player:context this.StateMachine.time set value 0
data remove storage player:context this.StateMachine._transition

function player_manager:fsm/_core/call_enter with storage player:context this.StateMachine
return 1
