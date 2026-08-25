#> api:player/effect/give
#
# カスタムエフェクトを付与する。
# 再付与時の挙動は登録定義の Reapply に従う。
#
# @input
# storage api: in.Effect
#   ID       : string   必須
#   Duration : int      省略時は定義値、-1は無期限
#   Data     : compound 省略可、エフェクト固有データへmerge
#   Source   : compound 省略可、付与元の識別情報
# @output storage api: out.EffectResult : bool
# @api

execute unless entity @s[type=player] run return 0
execute unless data storage api: in.Effect.ID run return 0

# player tick内では、既に読み込まれているコンテキストを直接使用する。
execute if entity @s[tag=_this] run return run function player_manager:effect/request/give

function player_manager:common/this/stash
function oh_my_dat:please
data modify storage player:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player

execute store result score #EffectApiResult _ run function player_manager:effect/request/give

function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player set from storage player:context this
function player_manager:common/this/pop

return run scoreboard players get #EffectApiResult _
