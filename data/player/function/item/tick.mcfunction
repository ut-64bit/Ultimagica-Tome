#> player:item/tick
#

# 現在の装備を取得する
	data modify storage player:item CurItem set value {}
	data modify storage player:item CurItem set from entity @s SelectedItem
	data remove storage player:item CurItem.components."minecraft:custom_model_data"

# 1tick前の装備を取得する
	data modify storage player:item PreItem set from storage player:context this.DataCache.Item

# 持ち替え検知
	data modify storage player:temp PreItemCpy set from storage player:item PreItem
	execute store success storage player:item Swapped byte 1 run data modify storage player:temp PreItemCpy set from storage player:item CurItem
	data remove storage player:temp PreItemCpy

# 持ち替え時に攻撃をキャンセルする
	execute if data storage player:item {Swapped:true} run function player:item/cancel_attack

# 装備を外したときの処理をマクロで呼び出す
	execute if data storage player:item {Swapped:true} run function player:item/call_unequip.m with storage player:item PreItem.components."minecraft:custom_data"

# 装備したときの処理をマクロで呼び出す
	execute if data storage player:item {Swapped:true} run function player:item/call_equip.m with storage player:item CurItem.components."minecraft:custom_data"

# 左クリックの処理を呼び出す
	execute if entity @s[tag=Click.Left] run function player:item/call_trigger_left.m with storage player:item CurItem.components."minecraft:custom_data"

# AttackIDを持つアイテムの使用時に攻撃を予約する
	execute if score @s UsingTime matches 1 if data storage player:item CurItem.components."minecraft:custom_data".AttackID run scoreboard players set @s AttackTimer 8

# 予約された攻撃を実行する
	execute if score @s AttackTimer matches 1.. unless score @s HardCoolTime matches 1.. if data storage player:item CurItem.components."minecraft:custom_data".AttackID run function player:item/attack

# tick処理をマクロで呼び出す
	function player:item/call_tick.m with storage player:item CurItem.components."minecraft:custom_data"

# キャッシュに装備を保存する
	data modify storage player:context this.DataCache.Item set value {}
	data modify storage player:context this.DataCache.Item set from entity @s SelectedItem
	data remove storage player:context this.DataCache.Item.components."minecraft:custom_model_data"

# あとしまつ
	data remove storage player:item CurItem
	data remove storage player:item PreItem
	data remove storage player:item Swapped
