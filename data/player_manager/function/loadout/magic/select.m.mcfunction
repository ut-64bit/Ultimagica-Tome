#> player_manager:loadout/magic/select.m
#
# player:context this が読み込まれている状態で使用する。

function player_manager:loadout/ensure

$execute unless data storage player_manager:loadout registry.magic[{id:"$(magic)"}] run return run function player_manager:loadout/magic/error/unknown.m {magic:"$(magic)"}
$execute if data storage player:context this.Loadout.Magic[{id:"$(magic)"}] run return run function player_manager:loadout/magic/error/duplicate.m {magic:"$(magic)"}

execute store result score #LoadoutMagicCount _ run data get storage player:context this.Loadout.Magic
function player_manager:loadout/magic/get_limit
execute if score #LoadoutMagicCount _ >= #LoadoutMagicLimit _ run return run function player_manager:loadout/magic/error/full

$data modify storage player:context this.Loadout.Magic append value {id:"$(magic)"}
$tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"translate":"ut_magic.spell.$(magic)","color":"aqua"},{"text":" を選択しました。","color":"green"}]
playsound block.note_block.pling ui @s ~ ~ ~ 1 1.2
return 1
