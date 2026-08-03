#> asset:item/magic_rod/attack/
#

# 先行入力を消す
	scoreboard players set @s AttackTimer 0

# 攻撃のデータを取得する
	data modify storage api: in.ID set from storage player:item CurItem.components."minecraft:custom_data".AttackID
	# execute if data storage player:context this.NextAttack run data modify storage api: in.ID set from storage player:context this.NextAttack

# MP消費
	execute unless function api:attack/require_stamina run return fail

# 攻撃
	function api:attack/set

# 演出
	# playsound entity.evoker.cast_spell player @s ~ ~ ~ 2 1 1
	# playsound entity.evoker.cast_spell player @a[tag=!_this] ~ ~ ~ 1.5 1
	particle enchant ~ ~1 ~ 0.2 0.5 0.2 0 10 force @a
