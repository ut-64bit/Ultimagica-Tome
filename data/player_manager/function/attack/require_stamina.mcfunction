#> player_manager:attack/require_stamina
#

# 攻撃のデータを取得する
	function player_manager:attack/get_data.m with storage api: in

# validate
	execute unless data storage asset:attack ID run return fail

# スタミナを消費する
	data modify storage api: in.Amount set from storage asset:attack RequireStamina
	execute if function api:player/stamina/check run function api:player/stamina/consume

# あとしまつ
	data remove storage asset:attack ID
	data remove storage asset:attack ChargeTime
	data remove storage asset:attack IsHoldable
	data remove storage asset:attack Combo
	data remove storage asset:attack RequireStamina
	data remove storage asset:attack Field

# 出力
	return run data get storage api: out.CheckStamina
