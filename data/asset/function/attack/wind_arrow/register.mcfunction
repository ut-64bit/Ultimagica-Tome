#> asset:attack/wind_arrow/register
#
# 登録処理
#

# ID
	data modify storage asset:attack ID set value "wind_arrow"

# チャージ時間
	data modify storage asset:attack ChargeTime append value 14
	data modify storage asset:attack ChargeTime append value 6

# チャージ完了後、保持できるか
	data modify storage asset:attack IsHoldable set value true


# 消費スタミナ
	data modify storage asset:attack RequireStamina set value 10

# フィールド
	# data modify storage asset:attack Field.Value set value
