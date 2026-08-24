#> player:menu/loadout/close

tag @s remove Menu.Loadout
tag @s remove Menu.LoadoutEdit
tag @s remove Menu.LoadoutDeleteConfirm
data remove storage player:context this.Menu.LoadoutPreset
data remove storage player:context this.Menu.LoadoutIconPage
playsound block.chest.close ui @s ~ ~ ~ 0.6 1
