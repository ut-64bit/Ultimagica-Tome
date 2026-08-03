# validate
	execute unless data storage player:context this.StateMachine.current run return fail
	execute if data storage player:context this.ActionBlock[{action:"attack"}] run return fail
	execute if data storage player:context this.StateMachine.state_data.AttackID run return fail

# 攻撃のデータを取得する
	$function asset:attack/$(ID)/register

# validate
	execute unless data storage asset:attack ID run return fail

# 攻撃を設定する
	data modify storage player:temp request_with set value {state:"attack_charge",data:{Field:{}}}
	data modify storage player:temp request_with.data.AttackID set from storage asset:attack ID
	data modify storage player:temp request_with.data.ChargeTime set from storage asset:attack ChargeTime
	data modify storage player:temp request_with.data.IsHoldable set from storage asset:attack IsHoldable
	data modify storage player:temp request_with.data.Field set from storage asset:attack Field
	function player_manager:fsm/request_with with storage player:temp request_with
	data remove storage player:temp request_with

	# 攻撃中の行動を制限する
	function player_manager:attack/block_actions

# コンボが切れる時間
	scoreboard players set @s ComboTimer 4

	data remove storage asset:attack ID
	data remove storage asset:attack ChargeTime
	data remove storage asset:attack IsHoldable
	data remove storage asset:attack ComboTime
	data remove storage asset:attack RequireStamina
	data remove storage asset:attack Field

return 1
