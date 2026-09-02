#> asset:attack/magic_bullet/register
#
# 登録処理
#

# ID
	data modify storage asset:attack ID set value "magic_bullet"

# チャージ時間
	data modify storage asset:attack ChargeTime append value 6
	data modify storage asset:attack ChargeTime append value 5

# チャージ完了後、保持できるか
	data modify storage asset:attack IsHoldable set value false


# 消費スタミナ
	data modify storage asset:attack RequireStamina set value 6

# フィールド
	# data modify storage asset:attack Field.Value set value
	# data modify storage asset:attack Combo.NextAttackID set value
