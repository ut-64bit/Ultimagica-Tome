#> asset:attack/elf_blast/attack_main/charge/
#

execute if score @s AttackTime matches 1 run function asset:attack/elf_blast/attack_main/charge/shot

execute if score @s AttackTime matches 12.. run function player_manager:fsm/request {state:"idle"}
