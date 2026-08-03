#> asset:attack/thunder_spire/register
#
# 登録処理
#

# ID
	data modify storage asset:attack ID set value "thunder_spire"

# チャージ時間
	data modify storage asset:attack ChargeTime append value 10

# チャージ完了後、保持できるか
	data modify storage asset:attack IsHoldable set value false

# クールタイム
	data modify storage asset:attack HardCoolTime set value 13

# 消費スタミナ
	data modify storage asset:attack RequireStamina set value 9

# フィールド
	# data modify storage asset:attack Field.Value set value
