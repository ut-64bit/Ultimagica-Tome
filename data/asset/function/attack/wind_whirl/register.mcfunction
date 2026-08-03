#> asset:attack/wind_whirl/register
#
# 登録処理
#

# ID
	data modify storage asset:attack ID set value "wind_whirl"

# チャージ時間
	data modify storage asset:attack ChargeTime append value 8
	data modify storage asset:attack ChargeTime append value 4

# チャージ完了後、保持できるか
	data modify storage asset:attack IsHoldable set value false

# クールタイム
	data modify storage asset:attack HardCoolTime set value 16

# 消費スタミナ
	data modify storage asset:attack RequireStamina set value 8

# フィールド
	# data modify storage asset:attack Field.Value set value
