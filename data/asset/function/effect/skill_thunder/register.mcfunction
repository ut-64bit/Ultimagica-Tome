#> asset:effect/skill_thunder/register

# 継承
	data modify storage asset:effect Extends append value "abstract.effect"
	function asset:effect/_extends/
# 抽象クラスか
	data modify storage asset:effect IsAbstract set value false
# ID
	data modify storage asset:effect ID set value "skill_thunder"
# グループ
	data modify storage asset:effect Groups set value ["debuff"]
# 再付与時の動作
	data modify storage asset:effect Reapply set value "ignore"
# 効果時間
	data modify storage asset:effect Duration set value 20
# フィールド
	data modify storage asset:effect Field set value {}
