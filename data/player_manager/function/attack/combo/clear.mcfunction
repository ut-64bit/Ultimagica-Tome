#> player_manager:attack/combo/clear
#

scoreboard players set @s Combo.Window 0
data remove storage player:context this.AttackCombo
data remove storage api: in.ComboInputAttackID

return 1
