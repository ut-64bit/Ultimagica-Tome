#> asset:object/proj.magic_turret/init/count_limit
#

scoreboard players add #t_CountLimit _ 1
execute if score #t_CountLimit _ matches 3.. run function api:common/auto_kill
