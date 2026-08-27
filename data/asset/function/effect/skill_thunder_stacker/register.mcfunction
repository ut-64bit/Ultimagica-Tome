#> asset:effect/skill_thunder_stacker/register

# 継承
	# data modify storage asset:effect Extends append value "abstract.effect"
	# function asset:effect/_extends/
# 抽象クラスか
	data modify storage asset:effect IsAbstract set value false
# ID
	data modify storage asset:effect ID set value "skill_thunder_stacker"
# グループ
	data modify storage asset:effect Groups set value ["debuff"]
# 再付与時の動作
	data modify storage asset:effect Reapply set value "stack"
# 効果時間
	data modify storage asset:effect Duration set value 100
# スタック数
	data modify storage asset:effect MaxStacks set value 100
	data modify storage asset:effect Stacks set value 1
# フィールド
	data modify storage asset:effect Field set value {}
	data modify storage asset:effect Field.StackIncrease set value 1
