# 引数: {state:"状態名"}
# 状態遷移を予約し、遷移適用直前の state_data を次の状態へ引き継ぎます。
# 同じtick内で後から予約された遷移が優先されます。
execute unless data storage player:context this.StateMachine.current run return fail

$data modify storage player:context this.StateMachine.transition set value {target:"$(state)",keep_data:1b}
return 1
