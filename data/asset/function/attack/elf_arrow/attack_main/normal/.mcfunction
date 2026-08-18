#> asset:attack/elf_arrow/attack_main/normal/
#

execute if score @s AttackTime matches 1 run function asset:attack/elf_arrow/attack_main/normal/shot

execute if score @s AttackTime matches 10.. run function player_manager:fsm/request {state:"idle"}
