#> player:menu/return_item.m
#
# アイテムを返却する
#
# @input slot : int
# @within function player:menu/click/**

# アイテムの返却
    $item replace block 10000 0 10000 container.0 from entity @s player.crafting.$(slot)
	loot spawn ~ ~ ~ mine 10000 0 10000 debug_stick

# 瞬時にアイテムの主が拾う
    execute as @n[type=item,distance=..0] run data modify entity @s Owner set from entity @p[tag=_this] UUID
    execute as @n[type=item,distance=..0] run data modify entity @s PickupDelay set value 0
