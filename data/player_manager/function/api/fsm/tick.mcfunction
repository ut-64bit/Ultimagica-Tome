# storage player:context this にコンテキストが読み込まれているプレイヤーごとに、必ず1回だけ呼び出してください。
execute unless data storage player:context this.StateMachine.current run return 0

function player_manager:fsm/call_tick with storage player:context this.StateMachine

# 状態コールバックからステートマシンを停止することもできます。
execute unless data storage player:context this.StateMachine.current run return 1

# 1回のマシンtickで適用される予約済み遷移は最大1件です。
execute if data storage player:context this.StateMachine.transition.target run return run function player_manager:fsm/apply_transition

function player_manager:fsm/increment_time
return 1
