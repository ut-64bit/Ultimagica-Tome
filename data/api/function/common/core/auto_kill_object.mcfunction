#> api:common/core/auto_kill_object
#

execute unless entity @s[tag=!_this,tag=!_init] run tag @s add KillFlag
execute if entity @s[tag=!_this,tag=!_init] run function asset_manager:object/trigger/destroy
