#> asset:attack/elf_arrow/attack_main/charge/
#

execute if score @s AttackTime matches 1 run function asset:attack/elf_arrow/attack_main/charge/create_attack_data

execute if score @s AttackTime matches 1 anchored eyes positioned ^-0.2 ^-0.2 ^0.5 run function asset:attack/elf_arrow/attack_main/charge/shot
execute if score @s AttackTime matches 2 anchored eyes positioned ^-0.2 ^-0.0 ^0.5 run function asset:attack/elf_arrow/attack_main/charge/shot
execute if score @s AttackTime matches 3 anchored eyes positioned ^-0.2 ^-0.4 ^0.5 run function asset:attack/elf_arrow/attack_main/charge/shot

execute if score @s AttackTime matches 12.. run function player_manager:fsm/request {state:"idle"}
