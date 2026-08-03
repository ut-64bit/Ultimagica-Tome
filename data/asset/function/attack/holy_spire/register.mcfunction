#> asset:attack/holy_spire/register
#
# 登録処理
#

# ID
	data modify storage asset:attack ID set value "holy_spire"

# チャージ時間
	data modify storage asset:attack ChargeTime append value 7

# チャージ完了後、ホールドできるか
	data modify storage asset:attack IsHoldable set value true


# 消費スタミナ
	data modify storage asset:attack RequireStamina set value 8

# フィールド
	# data modify storage asset:attack Field.Value set value
