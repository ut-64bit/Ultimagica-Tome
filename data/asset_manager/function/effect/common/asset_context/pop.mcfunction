#> asset_manager:effect/common/asset_context/pop

data remove storage asset:context Duration
data remove storage asset:context Age
data remove storage asset:context Stacks
data remove storage asset:context Groups
data remove storage asset:context Reapply
data remove storage asset:context MaxStacks
data remove storage asset:context Reason
data remove storage asset:context Reapplied
data modify storage asset:context Duration set from storage asset:context EffectStashStack[-1].Duration
data modify storage asset:context Age set from storage asset:context EffectStashStack[-1].Age
data modify storage asset:context Stacks set from storage asset:context EffectStashStack[-1].Stacks
data modify storage asset:context Groups set from storage asset:context EffectStashStack[-1].Groups
data modify storage asset:context Reapply set from storage asset:context EffectStashStack[-1].Reapply
data modify storage asset:context MaxStacks set from storage asset:context EffectStashStack[-1].MaxStacks
data modify storage asset:context Reason set from storage asset:context EffectStashStack[-1].Reason
data modify storage asset:context Reapplied set from storage asset:context EffectStashStack[-1].Reapplied
data remove storage asset:context EffectStashStack[-1]
