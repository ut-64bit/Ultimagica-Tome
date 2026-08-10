#> asset:attack/fire_breath/attack_main/repeat
#

# MP消費
	data modify storage api: in.Amount set value 8
	execute unless function api:player/stamina/check run return fail
	function api:player/stamina/consume

# 繰り返す
	function player_manager:attack/reset_time
