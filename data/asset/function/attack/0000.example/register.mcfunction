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


# 消費スタミナ
	data modify storage asset:attack RequireStamina set value 8

# コンボ
	# attack_mainの正常終了後、Window tick以内の同じ入力を別のAttackIDへ差し替える
	# Windowを省略した場合は4tick
	# data modify storage asset:attack Combo set value {NextAttackID:"0000.example.next",Window:4}

# フィールド
	# data modify storage asset:attack Field.Value set value
