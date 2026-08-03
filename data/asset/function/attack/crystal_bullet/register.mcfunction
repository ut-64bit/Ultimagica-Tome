#> asset:attack/crystal_bullet/register
#
# 登録処理
#

# ID
	data modify storage asset:attack ID set value "crystal_bullet"

# チャージ時間
	data modify storage asset:attack ChargeTime append value 8
	data modify storage asset:attack ChargeTime append value 3

# チャージ完了後、保持できるか
	data modify storage asset:attack IsHoldable set value false

# クールタイム
	data modify storage asset:attack HardCoolTime set value 3

# 消費スタミナ
	data modify storage asset:attack RequireStamina set value 6

# フィールド
	# data modify storage asset:attack Field.Value set value
