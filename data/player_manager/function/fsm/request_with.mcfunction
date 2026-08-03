# 引数: {state:"状態名",data:{...}}
# 状態遷移を予約し、次の状態の state_data にデータを渡します。
execute unless data storage player:context this.StateMachine.current run return fail

$data modify storage player:context this.StateMachine.transition set value {target:"$(state)",data:$(data)}
return 1
