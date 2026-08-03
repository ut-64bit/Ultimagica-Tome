#> asset:attack/0000.example/register
#
# 登録処理
#

# ID
	data modify storage asset:attack ID set value "0000.example"

# チャージ時間
	data modify storage asset:attack ChargeTime append value 9

# チャージ完了後、保持できるか
	data modify storage asset:attack IsHoldable set value false

# クールタイム
	data modify storage asset:attack HardCoolTime set value 6

# 消費スタミナ
	data modify storage asset:attack RequireStamina set value 8

# フィールド
	# data modify storage asset:attack Field.Value set value
