#> world:game/state/ending/enter

data modify storage world:game state set value "ending"
execute store result score #Game Game.Timer run data get storage world:game runtime.end_ticks

function world:game/dispatch/rule/end.m with storage world:game runtime
function world:game/dispatch/stage/end.m with storage world:game runtime

execute as @e[tag=AssetObject] run function api:common/auto_kill
gamemode spectator @a
gamerule pvp false

return 1
