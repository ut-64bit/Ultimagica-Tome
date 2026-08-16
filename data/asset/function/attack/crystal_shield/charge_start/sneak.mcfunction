#> asset:attack/crystal_shield/charge_start/sneak

execute as @e[tag=Object.atk.crystal_shield,distance=..1000] if score @s OwnerID = @n[tag=_this,distance=..1000] EntityID rotated as @n[tag=_this,distance=..1000] run rotate @s ~ ~

execute if score @s AttackTime matches 5.. run function player_manager:fsm/request {state:"idle"}

# 消費スタミナ
	# data modify storage api: in.Amount set from storage player:context this.StateMachine.state_data.RequireStamina
	# function api:player/stamina/recover
