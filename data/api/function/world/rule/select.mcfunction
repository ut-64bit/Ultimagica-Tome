#> api:world/rule/select
#
# 次の試合で使用するルールを選択する。
# @input rule: world:game/rule/<rule> に存在するルールID
#
# @api

execute unless data storage world_manager:game {state:"lobby"} run return fail

$data modify storage world_manager:game config.rule set value $(rule)
tellraw @a [{"text":"[Game] ","color":"gold"},{"text":"ルールを変更しました。","color":"green"}]

return 1
