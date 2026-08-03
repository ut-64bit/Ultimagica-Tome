#> api:attack/core/set
#

# 攻撃のデータを取得する
	function api:attack/core/get_data.m with storage api: in

# validate
	execute unless data storage asset:attack ID run return fail

# 攻撃を設定する
	data modify storage player:context this.Attack.ID set from storage asset:attack ID
	data modify storage player:context this.Attack.ChargeTime set from storage asset:attack ChargeTime
	data modify storage player:context this.Attack.IsHoldable set from storage asset:attack IsHoldable
	data modify storage player:context this.Attack.Field set from storage asset:attack Field
	data modify storage player:context this.AttackState set value "charge"

# クールダウンを設定する
	execute store result score @s HardCoolTime run data get storage asset:attack HardCoolTime
	scoreboard players operation @s SoftCoolTime = @s HardCoolTime
	scoreboard players add @s SoftCoolTime 4
	scoreboard players operation @s ComboTimer = @s SoftCoolTime

# あとしまつ
	data remove storage asset:attack ID
	data remove storage asset:attack ChargeTime
	data remove storage asset:attack IsHoldable
	data remove storage asset:attack HardCoolTime
	data remove storage asset:attack SoftCoolTime
	data remove storage asset:attack ComboTime
	data remove storage asset:attack RequireStamina
	data remove storage asset:attack Field
