# 引数: {state:"状態名"}
# 既存のステートマシンがある場合は、exitを呼び出してから置き換えます。
execute if data storage player:context this.StateMachine.current run function player_manager:fsm/stop

data modify storage player:context this.StateMachine set value {time:0,state_data:{}}
$data modify storage player:context this.StateMachine.current set value "$(state)"

function player_manager:fsm/_core/call_enter with storage player:context this.StateMachine
return 1
