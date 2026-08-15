#> asset:attack/gravity_bump/register
#
# 登録処理
#

# ID
	data modify storage asset:attack ID set value "gravity_bump"

# チャージ時間
	data modify storage asset:attack ChargeTime append value 10
	data modify storage asset:attack ChargeTime append value 4

# チャージ完了後、保持できるか
	data modify storage asset:attack IsHoldable set value false


# 消費スタミナ
	data modify storage asset:attack RequireStamina set value 10

# フィールド
	# data modify storage asset:attack Field.Value set value
