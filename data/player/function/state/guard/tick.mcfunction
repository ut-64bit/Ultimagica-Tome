# ガードをやめる
	execute unless data storage player:context this.StateMachine.transition.target unless predicate lib:input/sneak run function player_manager:fsm/request {state:"idle"}
	execute unless data storage player:context this.StateMachine.transition.target if score @s PlayTracker.Jump matches 1.. run function player_manager:fsm/request {state:"idle"}

# 演出
	particle dust{color:65522,scale:0.5} ~ ~1 ~ 0.3 0.5 0.3 0.1 3 normal
