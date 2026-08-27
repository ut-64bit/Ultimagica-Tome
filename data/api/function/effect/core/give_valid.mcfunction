#> api:effect/core/give_valid
# register結果を、管理用共通データと固有Fieldへ分けて正規化する。

data modify storage asset:context originID set from storage asset:effect ID
data modify storage asset:context this set from storage asset:effect Field
data modify storage asset:context this merge from storage api: in.FieldOverride

data modify storage api: in.Effect set value {ID:"",Duration:1,Stacks:1,Groups:[],Reapply:"refresh",MaxStacks:1,Field:{}}
data modify storage api: in.Effect.ID set from storage asset:effect ID
data modify storage api: in.Effect.Duration set from storage asset:effect Duration
data modify storage api: in.Effect.Stacks set from storage asset:effect Stacks
data modify storage api: in.Effect.Groups set from storage asset:effect Groups
data modify storage api: in.Effect.Reapply set from storage asset:effect Reapply
data modify storage api: in.Effect.MaxStacks set from storage asset:effect MaxStacks
data modify storage api: in.Effect.Field set from storage asset:context this
execute if data storage api: in.DurationOverride run data modify storage api: in.Effect.Duration set from storage api: in.DurationOverride

execute store result score #EffectGiveResult _ run function player_manager:effect/request/give
data remove storage api: in.Effect
execute store result storage api: out.EffectResult byte 1 run scoreboard players get #EffectGiveResult _
return run scoreboard players get #EffectGiveResult _
