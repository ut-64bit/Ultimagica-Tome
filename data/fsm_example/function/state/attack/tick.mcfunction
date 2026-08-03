# 状態突入時のtimeは0です。timeが3のtick終了後に後隙状態へ遷移します。
execute if data storage player:context this.StateMachine{time:3} run function player_manager:fsm/request {state:"fsm_example:state/recovery"}
return 0
