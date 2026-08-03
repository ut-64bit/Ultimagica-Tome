#> player:attack/tick
# 攻撃の更新処理

# contextを退避する
	function asset_manager:common/id/stash
	function asset_manager:common/this/stash

# キューから次の攻撃を実行する
	execute if data storage player:context this{AttackState:"standby"} if data storage player:context this.NextAttack run function player:attack/next

# Attackをアクセスしやすい場所に移動する
	data modify storage asset:attack Attack set from storage player:context this.Attack
	data remove storage player:context this.Attack

# context
	data modify storage asset:context id set from storage asset:attack Attack.ID
	data modify storage asset:context ChargeTime set from storage asset:attack Attack.ChargeTime
	data modify storage asset:context IsHoldable set from storage asset:attack Attack.IsHoldable
	data modify storage asset:context this set from storage asset:attack Attack.Field
	data modify storage asset:context State set from storage player:context this.AttackState
	data modify storage asset:context OldState set from storage player:context this.OldAttackState

# start/main
	execute if data storage player:context this{AttackState:"charge"} run function player:attack/charge/main
	execute if data storage player:context this{AttackState:"hold"} run function player:attack/hold/main
	execute if data storage player:context this{AttackState:"attack"} run function player:attack/attack/main
	execute if data storage player:context this{AttackState:"standby"} unless data storage asset:context {OldState:"standby"} run function player:attack/call_standby_start/

# end
	execute if data storage asset:context {OldState:"charge"} unless data storage asset:context {State:"charge"} run function player:attack/call_charge_end/
	execute if data storage asset:context {OldState:"attack"} unless data storage asset:context {State:"attack"} run function player:attack/call_attack_end/
	execute if data storage asset:context {OldState:"hold"} unless data storage asset:context {State:"hold"} run function player:attack/call_hold_end/
	execute if data storage asset:context {OldState:"standby"} unless data storage asset:context {State:"standby"} run function player:attack/call_standby_end/

# 状態を更新する
	data modify storage asset:context OldState set from storage player:context this.AttackState
	data modify storage player:context this.OldAttackState set from storage asset:context OldState
	data modify storage player:context this.AttackState set from storage asset:context State

# Attackを更新する
	data remove storage asset:attack Attack
	data modify storage asset:attack Attack.ID set from storage asset:context id
	data modify storage asset:attack Attack.ChargeTime set from storage asset:context ChargeTime
	data modify storage asset:attack Attack.IsHoldable set from storage asset:context IsHoldable
	data modify storage asset:attack Attack.Field set from storage asset:context this

# Attackを元の場所に戻す
	data modify storage player:context this.Attack set from storage asset:attack Attack
	data remove storage asset:attack Attack

# あとしまつ
	data remove storage asset:context id
	data remove storage asset:context ChargeTime
	data remove storage asset:context IsHoldable
	data remove storage asset:context State
	data remove storage asset:context OldState
	data remove storage asset:context this

# 退避したcontextを戻す
	function asset_manager:common/id/pop
	function asset_manager:common/this/pop
