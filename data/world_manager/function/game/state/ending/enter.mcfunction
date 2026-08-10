#> world_manager:game/state/ending/enter

data modify storage world_manager:game state set value "ending"
execute store result score #Game Game.Timer run data get storage world_manager:game runtime.end_ticks

function world_manager:game/dispatch/rule/end.m with storage world_manager:game runtime
function world_manager:game/dispatch/stage/end.m with storage world_manager:game runtime

execute as @e[tag=AssetObject] run function api:common/auto_kill
gamemode spectator @a
gamerule pvp false

return 1
