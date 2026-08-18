#> asset:attack/elf_jump/attack_main/charge/
#

execute if score @s AttackTime matches 1 run function asset:attack/elf_jump/attack_main/charge/jump

execute if score @s AttackTime matches 17.. run function player_manager:fsm/request {state:"idle"}
