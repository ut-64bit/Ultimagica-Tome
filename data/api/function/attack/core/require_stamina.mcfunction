#> api:attack/core/require_stamina
#

# 攻撃のデータを取得する
	function api:attack/core/get_data.m with storage api: in

# validate
	execute unless data storage asset:attack ID run return fail

# スタミナを消費する
	data modify storage api: in.Amount set from storage asset:attack RequireStamina
	execute if function api:stamina/check run function api:stamina/consume

# あとしまつ
	data remove storage asset:attack ID
	data remove storage asset:attack ChargeTime
	data remove storage asset:attack IsHoldable
	data remove storage asset:attack HardCoolTime
	data remove storage asset:attack SoftCoolTime
	data remove storage asset:attack ComboTime
	data remove storage asset:attack RequireStamina
	data remove storage asset:attack Field
