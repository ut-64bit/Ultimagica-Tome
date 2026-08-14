#> asset:attack/fire_wall/register
#
# 登録処理
#

# ID
	data modify storage asset:attack ID set value "fire_wall"

# チャージ時間
	data modify storage asset:attack ChargeTime append value 10

# チャージ完了後、保持できるか
	data modify storage asset:attack IsHoldable set value false


# 消費スタミナ
	data modify storage asset:attack RequireStamina set value 50

# フィールド
	# data modify storage asset:attack Field.Value set value
