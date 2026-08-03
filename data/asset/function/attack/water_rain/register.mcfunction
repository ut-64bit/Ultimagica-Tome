#> asset:attack/water_rain/register
#
# 登録処理
#

# ID
	data modify storage asset:attack ID set value "water_rain"

# チャージ時間
	data modify storage asset:attack ChargeTime append value 15

# チャージ完了後、保持できるか
	data modify storage asset:attack IsHoldable set value false

# クールタイム
	data modify storage asset:attack HardCoolTime set value 12

# 消費スタミナ
	data modify storage asset:attack RequireStamina set value 30

# フィールド
	# data modify storage asset:attack Field.Value set value
