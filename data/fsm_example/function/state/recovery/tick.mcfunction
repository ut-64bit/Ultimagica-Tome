# timeが5のtick終了後に待機状態へ戻ります。
execute if data storage player:context this.StateMachine{time:5} run function player_manager:fsm/request {state:"fsm_example:state/idle"}
return 0
