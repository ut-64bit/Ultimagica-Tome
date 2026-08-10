#> player:item/attack
#
# 現在使用しているアイテムのAttackIDから攻撃を開始する
#

# 先行入力を消す
	scoreboard players set @s AttackTimer 0

# 攻撃不可・攻撃中なら開始しない
	execute if data storage player:context this.ActionBlock[{action:"attack"}] run return fail
	execute if data storage player:context this.StateMachine.state_data.AttackID run return fail

# 攻撃のデータを取得する
	data modify storage api: in.ID set from storage player:item CurItem.components."minecraft:custom_data".AttackID

# スタミナを消費する
	execute unless function player_manager:attack/require_stamina run return fail

# 攻撃を開始する
	function player_manager:attack/set with storage api: in

# 演出
	particle enchant ~ ~1 ~ 0.2 0.5 0.2 0 10 force @a
