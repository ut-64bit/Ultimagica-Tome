#> world_manager:game/state/playing/tick

# 参加者タグを持たない途中参加者だけを観戦者にする。
# Game.TempSpectator は Game.Active のままなので勝敗判定に影響しない。
execute as @a[tag=!Game.Participant,tag=!Game.Observer] run function world_manager:game/player/observe

execute as @a[tag=Game.Active,scores={Game.Deaths=1}] at @s run function world_manager:game/player/eliminate

return run function world_manager:game/dispatch/rule/tick.m with storage world_manager:game runtime
