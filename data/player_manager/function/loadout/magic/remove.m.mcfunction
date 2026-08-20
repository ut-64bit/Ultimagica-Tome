#> player_manager:loadout/magic/remove.m
#
# 指定スロットを解除する。正数は先頭、負数は末尾から数える。

function player_manager:loadout/ensure

$scoreboard players set #LoadoutMagicSlot _ $(slot)
execute store result score #LoadoutMagicCount _ run data get storage player:context this.Loadout.Magic

# 負数を末尾基準のスロット番号へ変換する（-1が最後尾）。
scoreboard players set #LoadoutMagicNegativeSlot _ 0
execute if score #LoadoutMagicSlot _ matches ..-1 run scoreboard players set #LoadoutMagicNegativeSlot _ 1
execute if score #LoadoutMagicNegativeSlot _ matches 1 run scoreboard players operation #LoadoutMagicSlot _ += #LoadoutMagicCount _
execute if score #LoadoutMagicNegativeSlot _ matches 1 run scoreboard players add #LoadoutMagicSlot _ 1

execute unless score #LoadoutMagicSlot _ matches 1.. run return run function player_manager:loadout/magic/error/slot
execute if score #LoadoutMagicSlot _ > #LoadoutMagicCount _ run return run function player_manager:loadout/magic/error/slot

data modify storage player_manager:loadout temp.remove set value {slot:0,index:0}
execute store result storage player_manager:loadout temp.remove.slot int 1 run scoreboard players get #LoadoutMagicSlot _
scoreboard players remove #LoadoutMagicSlot _ 1
execute store result storage player_manager:loadout temp.remove.index int 1 run scoreboard players get #LoadoutMagicSlot _
function player_manager:loadout/magic/remove_at.m with storage player_manager:loadout temp.remove
function player_manager:loadout/magic/message/remove.m with storage player_manager:loadout temp.remove
data remove storage player_manager:loadout temp.remove

playsound ui.button.click ui @s ~ ~ ~ 1 1
return 1
