#> player_manager:effect/request/give
#
# @within player:context this
# @input storage api: in.Effect
#   {ID:string, Duration?:int, Data?:compound, Source?:compound}

data modify storage api: out.EffectResult set value false
execute unless entity @s[type=player] run return 0
execute unless data storage api: in.Effect.ID run return 0

# 未登録IDは、動的functionを呼ぶ前に拒否する。
function player_manager:effect/definition/get.m with storage api: in.Effect
execute unless data storage effect:context Definition run return 0

# 0は即時終了として許可し、-1は無期限。それより小さい値は不正。
execute if data storage api: in.Effect.Duration store result score #EffectInputDuration _ run data get storage api: in.Effect.Duration
execute if data storage api: in.Effect.Duration if score #EffectInputDuration _ matches ..-2 run return run function player_manager:effect/request/invalid_duration
scoreboard players reset #EffectInputDuration _

execute unless data storage player:context this.Effects run data modify storage player:context this.Effects set value []
data modify storage effect:runtime Operations append value {Type:"give",Request:{}}
data modify storage effect:runtime Operations[-1].Request set from storage api: in.Effect
data modify storage api: out.EffectResult set value true

return run function player_manager:effect/request/finish
