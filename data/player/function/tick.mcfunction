#> player:tick
#

# 識別用のタグを付与
	tag @s add _this

# OhMyDatからデータを呼び出す
	function oh_my_dat:please
	data modify storage player:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player

# アイテム使用時の処理
	execute if entity @s[advancements={player:handler/using_item=true}] run function player:handler/using_item
	execute if entity @s[tag= UsingItem] run scoreboard players add @s UsingTime 1
	execute if entity @s[tag=!UsingItem] run scoreboard players set @s UsingTime 0

# キー入力
	execute if predicate lib:input/forward run scoreboard players add @s InputKey.Forward 1
	execute if predicate lib:input/backward run scoreboard players add @s InputKey.Backward 1
	execute if predicate lib:input/right run scoreboard players add @s InputKey.Right 1
	execute if predicate lib:input/left run scoreboard players add @s InputKey.Left 1
	execute if predicate lib:input/sprint run scoreboard players add @s InputKey.Sprint 1
	execute if predicate lib:input/sneak run scoreboard players add @s InputKey.Sneak 1
	execute if predicate lib:input/jump run scoreboard players add @s InputKey.Jump 1
	execute unless predicate lib:input/forward if score @s InputKey.Forward matches 1.. run scoreboard players set @s InputKey.Forward 0
	execute unless predicate lib:input/backward if score @s InputKey.Backward matches 1.. run scoreboard players set @s InputKey.Backward 0
	execute unless predicate lib:input/right if score @s InputKey.Right matches 1.. run scoreboard players set @s InputKey.Right 0
	execute unless predicate lib:input/left if score @s InputKey.Left matches 1.. run scoreboard players set @s InputKey.Left 0
	execute unless predicate lib:input/sprint if score @s InputKey.Sprint matches 1.. run scoreboard players set @s InputKey.Sprint 0
	execute unless predicate lib:input/sneak if score @s InputKey.Sneak matches 1.. run scoreboard players set @s InputKey.Sneak 0
	execute unless predicate lib:input/jump if score @s InputKey.Jump matches 1.. run scoreboard players set @s InputKey.Jump 0

# 落下距離
	execute unless predicate lib:flag/on_ground if score @s PlayTracker.FallDistance matches 1.. run scoreboard players set @s PlayTracker.FallDistance 0

# 2回目以降のワールドに入ったときの処理
	execute if score @s PlayTracker.Rejoin matches 1 run function player:main/rejoin
# リスポーン
	execute if score @s PlayTracker.Respawn matches 1 run function player:main/respawn


# メイン処理
	function player_manager:invincibility/tick
	function player:main/tick
	function player_manager:attack/unblock_pending_actions


# OhMyDatにデータを戻す
	function oh_my_dat:please
	data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player set from storage player:context this
	data remove storage player:context this

# PlayTrackerのタグを外す
	tag @s remove FirstJoin
	tag @s remove InventoryChanged
	tag @s remove UsingItem
	tag @s remove Click.Left

scoreboard players set @s PlayTracker.Jump 0

# 識別用のタグを外す
	tag @s remove _this
