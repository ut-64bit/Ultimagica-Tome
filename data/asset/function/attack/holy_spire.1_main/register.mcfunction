#> asset:attack/holy_spire.1_main/register
#
# 登録処理
#

# ID
	data modify storage asset:attack ID set value "holy_spire.1_main"

# チャージ時間
	data modify storage asset:attack ChargeTime append value 4

# チャージ完了後、保持できるか
	data modify storage asset:attack IsHoldable set value true

# クールタイム
	data modify storage asset:attack HardCoolTime set value 7

# 消費スタミナ
	data modify storage asset:attack RequireStamina set value 0

# フィールド
	# data modify storage asset:attack Field.Value set value
