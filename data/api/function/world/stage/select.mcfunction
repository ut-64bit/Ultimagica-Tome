#> api:world/stage/select
#
# 次の試合で使用するステージを選択する。
# @input stage: world:game/stage/<stage> に存在するステージID
#
# @api

execute unless data storage world_manager:game {state:"lobby"} run return fail

$data modify storage world_manager:game config.stage set value $(stage)
tellraw @a [{"text":"[Game] ","color":"gold"},{"text":"ステージを変更しました。","color":"green"}]

return 1
