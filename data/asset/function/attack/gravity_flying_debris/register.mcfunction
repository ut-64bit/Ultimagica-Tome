#> asset:attack/gravity_flying_debris/register
#
# 登録処理
#

# ID
	data modify storage asset:attack ID set value "gravity_flying_debris"

# チャージ時間
	data modify storage asset:attack ChargeTime append value 11

# チャージ完了後、保持できるか
	data modify storage asset:attack IsHoldable set value false


# 消費スタミナ
	data modify storage asset:attack RequireStamina set value 14

# フィールド
	# data modify storage asset:attack Field.Value set value
