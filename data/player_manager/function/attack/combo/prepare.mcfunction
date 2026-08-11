#> player_manager:attack/combo/prepare
#
# Stores the next AttackID after attack_main ends normally.

function player_manager:attack/combo/clear
execute unless data storage player:context this.StateMachine.state_data.Combo.NextAttackID run return 0

data modify storage player:context this.AttackCombo set value {}
data modify storage player:context this.AttackCombo.InputAttackID set from storage player:context this.StateMachine.state_data.AttackID
data modify storage player:context this.AttackCombo.InputAttackID set from storage player:context this.StateMachine.state_data.ComboInputAttackID
data modify storage player:context this.AttackCombo.NextAttackID set from storage player:context this.StateMachine.state_data.Combo.NextAttackID

scoreboard players set @s Combo.Window 4
execute if data storage player:context this.StateMachine.state_data.Combo.Window store result score @s Combo.Window run data get storage player:context this.StateMachine.state_data.Combo.Window
execute unless score @s Combo.Window matches 1.. run return run function player_manager:attack/combo/clear

# combo/tick runs before item input, so keep the configured number of future ticks.
scoreboard players add @s Combo.Window 1
return 1
