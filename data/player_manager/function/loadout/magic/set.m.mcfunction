#> player_manager:loadout/magic/set.m
#
# 指定スロットの魔法を変更する。slot は1から始まる。

function player_manager:loadout/ensure

$execute unless data storage player_manager:loadout registry.magic[{id:"$(magic)"}] run return run function player_manager:loadout/magic/error/unknown.m {magic:"$(magic)"}
$execute if data storage player:context this.Loadout.Magic[{id:"$(magic)"}] run return run function player_manager:loadout/magic/error/duplicate.m {magic:"$(magic)"}

$scoreboard players set #LoadoutMagicSlot _ $(slot)
execute unless score #LoadoutMagicSlot _ matches 1.. run return run function player_manager:loadout/magic/error/slot

function player_manager:loadout/magic/get_limit
execute if score #LoadoutMagicSlot _ > #LoadoutMagicLimit _ run return run function player_manager:loadout/magic/error/slot

execute store result score #LoadoutMagicCount _ run data get storage player:context this.Loadout.Magic
scoreboard players operation #LoadoutMagicNext _ = #LoadoutMagicCount _
scoreboard players add #LoadoutMagicNext _ 1
execute if score #LoadoutMagicSlot _ > #LoadoutMagicNext _ run return run function player_manager:loadout/magic/error/gap

$data modify storage player_manager:loadout temp.set set value {slot:$(slot),index:0,id:"$(magic)"}
scoreboard players remove #LoadoutMagicSlot _ 1
execute store result storage player_manager:loadout temp.set.index int 1 run scoreboard players get #LoadoutMagicSlot _

$execute if score #LoadoutMagicSlot _ = #LoadoutMagicCount _ run data modify storage player:context this.Loadout.Magic append value {id:"$(magic)"}
execute if score #LoadoutMagicSlot _ < #LoadoutMagicCount _ run function player_manager:loadout/magic/set_at.m with storage player_manager:loadout temp.set

function player_manager:loadout/magic/message/set.m with storage player_manager:loadout temp.set
data remove storage player_manager:loadout temp.set
playsound block.note_block.pling ui @s ~ ~ ~ 1 1.2
return 1
