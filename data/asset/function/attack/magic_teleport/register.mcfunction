#> asset:attack/magic_teleport/register
#
# 登録処理
#

# ID
	data modify storage asset:attack ID set value "magic_teleport"

# チャージ時間
	data modify storage asset:attack ChargeTime append value 6

# チャージ完了後、保持できるか
	data modify storage asset:attack IsHoldable set value false


# 消費スタミナ
	data modify storage asset:attack RequireStamina set value 10

# フィールド
	# data modify storage asset:attack Field.Value set value
