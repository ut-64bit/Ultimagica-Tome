#> world:game/stage/debug/select
#
# デバッグステージを次の試合に設定する。

execute unless data storage world:game {state:"lobby"} run return fail

data modify storage world:game config.stage set value "debug"
tellraw @a [{"text":"[Game] ","color":"gold"},{"text":"ステージを debug に設定しました。","color":"green"}]

return 1
