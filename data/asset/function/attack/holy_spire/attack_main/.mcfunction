#> asset:attack/holy_spire/attack_main/
#

# 従来の後半チャージに相当する4 tickを待ってから発射する
execute if score @s AttackTime matches 4 run function asset:attack/holy_spire/attack_main/shot

# 発射後の硬直を含めて終了する
execute if score @s AttackTime matches 8.. run function player_manager:fsm/request {state:"idle"}
