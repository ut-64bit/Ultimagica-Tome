#> player_manager:effect/operation/give/reapply/extend
# 既存Effectの残り時間を加算し、givenメソッドを再度呼び出す。

execute store result score #EffectDuration _ run data get storage effect:context Current.Duration
execute store result score #EffectGrantDuration _ run data get storage effect:context Request.Duration
execute unless score #EffectDuration _ matches -1 unless score #EffectGrantDuration _ matches -1 run scoreboard players operation #EffectDuration _ += #EffectGrantDuration _
execute if score #EffectGrantDuration _ matches -1 run scoreboard players set #EffectDuration _ -1
execute store result storage effect:context Current.Duration int 1 run scoreboard players get #EffectDuration _

data modify storage effect:context Current.Groups set from storage effect:context Request.Groups
data modify storage effect:context Current.Reapply set from storage effect:context Request.Reapply
data modify storage effect:context Current.MaxStacks set from storage effect:context Request.MaxStacks
data modify storage effect:context Current.Field set from storage effect:context Request.Field
data modify storage effect:context Current.Reapplied set value true
function player_manager:effect/dispatch {Event:"given"}
data remove storage effect:context Current.Reapplied
function player_manager:effect/operation/give/finalize

scoreboard players reset #EffectDuration _
scoreboard players reset #EffectGrantDuration _
