#> asset_manager:effect/common/context/pop
# 退避した asset:effect の作業コンテキストを戻す。

data remove storage asset:effect ID
data remove storage asset:effect Extends
data remove storage asset:effect IsAbstract
data remove storage asset:effect Field
data remove storage asset:effect Duration
data remove storage asset:effect Stacks
data remove storage asset:effect Groups
data remove storage asset:effect Reapply
data remove storage asset:effect MaxStacks
data remove storage asset:effect Reason
data remove storage asset:effect Reapplied
data remove storage asset:effect Implement
data remove storage asset:effect CopiedExtends

data modify storage asset:effect ID set from storage asset:effect ContextStashStack[-1].ID
data modify storage asset:effect Extends set from storage asset:effect ContextStashStack[-1].Extends
data modify storage asset:effect IsAbstract set from storage asset:effect ContextStashStack[-1].IsAbstract
data modify storage asset:effect Field set from storage asset:effect ContextStashStack[-1].Field
data modify storage asset:effect Duration set from storage asset:effect ContextStashStack[-1].Duration
data modify storage asset:effect Stacks set from storage asset:effect ContextStashStack[-1].Stacks
data modify storage asset:effect Groups set from storage asset:effect ContextStashStack[-1].Groups
data modify storage asset:effect Reapply set from storage asset:effect ContextStashStack[-1].Reapply
data modify storage asset:effect MaxStacks set from storage asset:effect ContextStashStack[-1].MaxStacks
data modify storage asset:effect Reason set from storage asset:effect ContextStashStack[-1].Reason
data modify storage asset:effect Reapplied set from storage asset:effect ContextStashStack[-1].Reapplied
data modify storage asset:effect Implement set from storage asset:effect ContextStashStack[-1].Implement
data modify storage asset:effect CopiedExtends set from storage asset:effect ContextStashStack[-1].CopiedExtends
data remove storage asset:effect ContextStashStack[-1]
