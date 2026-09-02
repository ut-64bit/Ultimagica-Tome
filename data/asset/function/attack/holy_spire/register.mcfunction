#> asset:attack/holy_spire/register
#
# 登録処理
#

# ID
	data modify storage asset:attack ID set value "holy_spire"

# チャージ時間
	data modify storage api: in.Skill set value "school_saint_mastery"
	execute if function player_manager:skill/has run data modify storage asset:attack ChargeTime append value 7
	execute unless function player_manager:skill/has run data modify storage asset:attack ChargeTime append value 10

# チャージ完了後、ホールドできるか
	data modify storage asset:attack IsHoldable set value true


# 消費スタミナ
	data modify storage asset:attack RequireStamina set value 12

# フィールド
	# data modify storage asset:attack Field.Value set value
