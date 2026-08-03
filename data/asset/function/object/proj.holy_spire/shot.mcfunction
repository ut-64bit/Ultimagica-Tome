#> asset:object/proj.holy_spire/shot
#

function oh_my_dat:please
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Object.Field{State:"idle"} run return fail

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Object.Field.State set value "move"
execute positioned ~ ~1.3 ~ positioned ^-0.4 ^ ^0.1 run tp @s ~ ~ ~ ~ ~
