# 引数: {state:"namespace:path/to/state",data:{...}}
# 初期 state_data を指定してステートマシンを開始します。
execute if data storage player:context this.StateMachine.current run function player_manager:api/fsm/stop

$data modify storage player:context this.StateMachine set value {current:"$(state)",time:0,state_data:$(data)}

function player_manager:fsm/call_enter with storage player:context this.StateMachine
return 1
