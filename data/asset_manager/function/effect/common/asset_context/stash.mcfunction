#> asset_manager:effect/common/asset_context/stash

data modify storage asset:context EffectStashStack append value {}
data modify storage asset:context EffectStashStack[-1].Duration set from storage asset:context Duration
data modify storage asset:context EffectStashStack[-1].Age set from storage asset:context Age
data modify storage asset:context EffectStashStack[-1].Stacks set from storage asset:context Stacks
data modify storage asset:context EffectStashStack[-1].Groups set from storage asset:context Groups
data modify storage asset:context EffectStashStack[-1].Reapply set from storage asset:context Reapply
data modify storage asset:context EffectStashStack[-1].MaxStacks set from storage asset:context MaxStacks
data modify storage asset:context EffectStashStack[-1].Reason set from storage asset:context Reason
data modify storage asset:context EffectStashStack[-1].Reapplied set from storage asset:context Reapplied
data remove storage asset:context Duration
data remove storage asset:context Age
data remove storage asset:context Stacks
data remove storage asset:context Groups
data remove storage asset:context Reapply
data remove storage asset:context MaxStacks
data remove storage asset:context Reason
data remove storage asset:context Reapplied
