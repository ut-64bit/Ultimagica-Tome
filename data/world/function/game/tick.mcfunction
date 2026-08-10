#> world:game/tick

# /trigger Game.Ready でロビーの準備状態を切り替える。
scoreboard players enable @a Game.Ready

execute if data storage world:game {state:"lobby"} run return run function world:game/state/lobby/tick
execute if data storage world:game {state:"countdown"} run return run function world:game/state/countdown/tick
execute if data storage world:game {state:"playing"} run return run function world:game/state/playing/tick
execute if data storage world:game {state:"ending"} run return run function world:game/state/ending/tick

# 不正な状態から復旧する。
function world:game/reset
