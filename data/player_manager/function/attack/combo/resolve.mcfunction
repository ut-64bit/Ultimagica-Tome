#> player_manager:attack/combo/resolve
#
# Replaces api:in.ID only when the input AttackID matches the stored combo source.

data remove storage api: in.ComboInputAttackID
execute unless score @s Combo.Window matches 1.. run return run function player_manager:attack/combo/clear
execute unless data storage player:context this.AttackCombo.InputAttackID run return run function player_manager:attack/combo/clear
execute unless data storage player:context this.AttackCombo.NextAttackID run return run function player_manager:attack/combo/clear

return run function player_manager:attack/combo/resolve.m with storage player:context this.AttackCombo
