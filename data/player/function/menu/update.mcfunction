#> player:menu/update
# @within function player:menu/**

# インベントリからあぶれたアイテムのkill
    execute anchored eyes positioned ^ ^ ^ as @e[type=item,distance=..5] if data entity @s Item.components."minecraft:custom_data".menu run kill @s

# 再配置
	function player:menu/update/0/
	function player:menu/update/1/
	function player:menu/update/2/
	function player:menu/update/3/

# オフハンド・カーソルの検知用アイテムをclear
    execute if items entity @s weapon.offhand *[custom_data~{menu:{}}] run item replace entity @s weapon.offhand with air
    execute if items entity @s player.cursor *[custom_data~{menu:{}}] run item replace entity @s player.cursor with air

# インベントリ内の検知用アイテムをclear
    data modify storage player:context menu set value {slot0:53,slot1:53,slot2:53,slot3:53}
    execute if items entity @s container.* *[custom_data~{slot:0}] store result storage player:context menu.slot0 int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{slot:0}}}].Slot
    execute if items entity @s container.* *[custom_data~{slot:1}] store result storage player:context menu.slot1 int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{slot:1}}}].Slot
    execute if items entity @s container.* *[custom_data~{slot:2}] store result storage player:context menu.slot2 int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{slot:2}}}].Slot
    execute if items entity @s container.* *[custom_data~{slot:3}] store result storage player:context menu.slot3 int 1 run data get entity @s Inventory[{components:{"minecraft:custom_data":{slot:3}}}].Slot
    function player:menu/clear.m with storage player:context menu

# リセット
    data remove storage player:context menu
