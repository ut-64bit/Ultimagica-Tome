#> asset:object/atk.crystal_shield_place/init/count_limit
#

scoreboard players add #t_CountLimit _ 1
execute if score #t_CountLimit _ matches 2.. run function api:common/auto_kill
