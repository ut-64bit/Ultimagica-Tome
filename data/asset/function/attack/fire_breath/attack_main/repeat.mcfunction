#> asset:attack/fire_breath/attack_main/repeat
#

# 繰り返し数を減らす
	execute if data storage player:context this.StateMachine.state_data.Field{Repeat:0} run return fail
	execute store result storage player:context this.StateMachine.state_data.Field.Repeat int 0.9999999999 run data get storage player:context this.StateMachine.state_data.Field.Repeat

# MP消費
	data modify storage api: in.Amount set value 8
	execute unless function api:player/stamina/check run return fail
	function api:player/stamina/consume

# 繰り返す
	function player_manager:attack/reset_time
