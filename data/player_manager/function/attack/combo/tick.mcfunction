#> player_manager:attack/combo/tick
#

execute unless data storage player:context this.AttackCombo run scoreboard players set @s Combo.Window 0
execute if data storage player:context this.AttackCombo if score @s Combo.Window matches 1.. run scoreboard players remove @s Combo.Window 1
execute if data storage player:context this.AttackCombo unless score @s Combo.Window matches 1.. run function player_manager:attack/combo/clear
