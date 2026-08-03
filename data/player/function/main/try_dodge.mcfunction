# MPが足りてるか
	data modify storage api: in.Amount set value 10
	execute unless function api:stamina/check run return fail

# その他の条件
	execute if predicate lib:input/sneak run return fail
	execute if entity @s[gamemode=creative] run return fail
	execute if entity @s[gamemode=spectator] run return fail

# wind_arrowのホールド中だけは攻撃硬直を無視して回避できる
	execute if data storage player:context this.StateMachine{current:"attack_hold",state_data:{AttackID:"wind_arrow"}} run return run function player_manager:fsm/request {state:"dodge"}

return run function player_manager:fsm/request {state:"dodge"}
