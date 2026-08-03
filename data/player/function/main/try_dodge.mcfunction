# MPが足りてるか
	data modify storage api: in.Amount set value 10
	execute unless function api:stamina/check run return fail

# その他の条件
	execute if predicate lib:input/sneak run return fail
	execute if entity @s[gamemode=creative] run return fail
	execute if entity @s[gamemode=spectator] run return fail

return run function player_manager:fsm/request {state:"dodge"}
