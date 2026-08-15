#> player_manager:loadout/magic/show/entry.m

# $tellraw @s [{"text":"  $(slot). ","color":"gray"},{"translate":"ut_magic.spell.$(id)","color":"aqua"}]
$tellraw @s {translate:"loadout.magic.slot",with:[{score:{name:"#LoadoutDisplaySlot",objective:"_"},color:"gray"},{translate:"ut_magic.spell.$(id)",color:"aqua"}]}
