#> player_manager:loadout/magic/show/empty

# $tellraw @s [{"text":"  $(slot). ","color":"gray"},{"text":"未設定","color":"dark_gray"}]
tellraw @s {translate:"loadout.magic.slot",with:[{score:{name:"#LoadoutDisplaySlot",objective:"_"},color:"gray"},{text:"未設定",color:"gray"}]}
