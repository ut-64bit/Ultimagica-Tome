#> asset:item/magic_rod/attack/
#

# 先行入力を消す
	scoreboard players set @s AttackTimer 0

# 攻撃不可・攻撃中なら開始しない
	execute if data storage player:context this.ActionBlock[{action:"attack"}] run return fail
	execute if data storage player:context this.StateMachine.state_data.AttackID run return fail

# 攻撃のデータを取得する
	data modify storage api: in.ID set from storage player:item CurItem.components."minecraft:custom_data".AttackID

# MP消費
	execute unless function api:attack/require_stamina run return fail

# 攻撃
	function player_manager:attack/set with storage api: in

# 演出
	# playsound entity.evoker.cast_spell player @s ~ ~ ~ 2 1 1
	# playsound entity.evoker.cast_spell player @a[tag=!_this] ~ ~ ~ 1.5 1
	particle enchant ~ ~1 ~ 0.2 0.5 0.2 0 10 force @a
