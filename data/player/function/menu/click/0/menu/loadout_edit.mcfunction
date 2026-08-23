#> player:menu/click/0/menu/loadout_edit

execute if entity @s[tag=Menu.LoadoutDeleteConfirm] run return run function player:menu/loadout/edit/delete

tag @s add Menu.LoadoutDeleteConfirm
playsound block.note_block.bass ui @s ~ ~ ~ 0.8 0.8
