#> player_manager:effect/request/invalid_duration

scoreboard players reset #EffectInputDuration _
data remove storage effect:context Definition
data modify storage api: out.EffectResult set value false
return 0
