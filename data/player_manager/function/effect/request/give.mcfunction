#> player_manager:effect/request/give
# 付与データを検証し、Effect付与操作をキューへ追加する。
# @within player:context this
# @input storage api: in.Effect

data modify storage api: out.EffectResult set value false
execute unless entity @s[type=player] run return 0
execute unless data storage api: in.Effect.ID run return 0
execute if data storage api: in.Effect.Duration store result score #EffectInputDuration _ run data get storage api: in.Effect.Duration
execute if data storage api: in.Effect.Duration if score #EffectInputDuration _ matches ..-2 run return run function player_manager:effect/request/invalid_duration
scoreboard players reset #EffectInputDuration _

execute unless data storage player:context this.Effects run data modify storage player:context this.Effects set value []
data modify storage effect:runtime Operations append value {Type:"give",Request:{}}
data modify storage effect:runtime Operations[-1].Request set from storage api: in.Effect
data modify storage api: out.EffectResult set value true
return run function player_manager:effect/request/finish
