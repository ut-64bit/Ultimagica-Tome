#> player:stamina/tick
# スタミナのtick処理

# スタミナの自然回復
	# スタミナ回復遅延のタイマーを進める
		execute unless data storage player:context this.StateMachine.state_data.AttackID if score @s StaminaRecoverDelay matches 1.. run scoreboard players remove @s StaminaRecoverDelay 1

	# スタミナを自然回復する
		execute store result storage api: in.Amount float 0.001 run scoreboard players get @s StaminaRecoverSpeed
		execute unless predicate lib:flag/on_ground store result storage api: in.Amount float 0.0003 run scoreboard players get @s StaminaRecoverSpeed
		execute unless data storage player:context this.StateMachine.state_data.AttackID unless score @s StaminaRecoverDelay matches 1.. run function api:player/stamina/recover
