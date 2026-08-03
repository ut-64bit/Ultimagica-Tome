#> api:damage/create_attack_data
#
# AttackDataを作成する
#
# @input
#	storage api: in.Damage
#		: int
#		ダメージ量
#	storage api: in.AttackID
#		: ?any
#		"null"の場合受けたダメージに記録されず、以下のオプションが適用されない
#		未設定の場合は新しいIDが割り当てられる
#	storage api: in.MaxHit
#		: ?int
#		最大ヒット数
#
# @output
#	storage api: out.AttackData
#		: AttackData
#
# @api

# validate
	execute unless data storage api: in.Damage run return fail

# リセット
	data remove storage api: out.AttackData

# AttackDataを生成する
	data modify storage api: out.AttackData.Damage set from storage api: in.Damage
	data modify storage api: out.AttackData.ID set from storage api: in.AttackID
	data modify storage api: out.AttackData.MaxHitCount set from storage api: in.MaxHit
	data modify storage api: out.AttackData.Attribute set from storage api: in.Attribute

# AttackIDが未設定なら新しいIDを割り当てる
	execute unless data storage api: out.AttackData.ID store result storage api: out.AttackData.ID int 1 run function api:damage/core/allocate

# 出力
	return run data get storage api: out.AttackData
