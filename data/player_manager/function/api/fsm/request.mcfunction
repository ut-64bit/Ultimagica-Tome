# 引数: {state:"namespace:path/to/state"}
# 状態遷移を予約します。同じtick内で後から予約された遷移が優先されます。
# 遷移適用時に state_data は空になります。
execute unless data storage player:context this.StateMachine.current run return fail

data modify storage player:context this.StateMachine.transition set value {}
$data modify storage player:context this.StateMachine.transition.target set value "$(state)"
return 1
