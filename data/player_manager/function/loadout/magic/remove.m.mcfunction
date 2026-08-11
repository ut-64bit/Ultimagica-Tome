#> player_manager:loadout/magic/remove.m
#
# 指定スロットを解除する。slot は1から始まる。

function player_manager:loadout/ensure

$scoreboard players set #LoadoutMagicSlot _ $(slot)
execute store result score #LoadoutMagicCount _ run data get storage player:context this.Loadout.Magic
execute unless score #LoadoutMagicSlot _ matches 1.. run return run function player_manager:loadout/magic/error/slot
execute if score #LoadoutMagicSlot _ > #LoadoutMagicCount _ run return run function player_manager:loadout/magic/error/slot

$data modify storage player_manager:loadout temp.remove set value {slot:$(slot),index:0}
scoreboard players remove #LoadoutMagicSlot _ 1
execute store result storage player_manager:loadout temp.remove.index int 1 run scoreboard players get #LoadoutMagicSlot _
function player_manager:loadout/magic/remove_at.m with storage player_manager:loadout temp.remove
function player_manager:loadout/magic/message/remove.m with storage player_manager:loadout temp.remove
data remove storage player_manager:loadout temp.remove

playsound ui.button.click ui @s ~ ~ ~ 1 1
return 1
