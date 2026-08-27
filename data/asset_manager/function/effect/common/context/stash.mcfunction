#> asset_manager:effect/common/context/stash
# asset:effect の作業コンテキストを退避する。

data modify storage asset:effect ContextStashStack append value {}
data modify storage asset:effect ContextStashStack[-1].ID set from storage asset:effect ID
data modify storage asset:effect ContextStashStack[-1].Extends set from storage asset:effect Extends
data modify storage asset:effect ContextStashStack[-1].IsAbstract set from storage asset:effect IsAbstract
data modify storage asset:effect ContextStashStack[-1].Field set from storage asset:effect Field
data modify storage asset:effect ContextStashStack[-1].Duration set from storage asset:effect Duration
data modify storage asset:effect ContextStashStack[-1].Stacks set from storage asset:effect Stacks
data modify storage asset:effect ContextStashStack[-1].Groups set from storage asset:effect Groups
data modify storage asset:effect ContextStashStack[-1].Reapply set from storage asset:effect Reapply
data modify storage asset:effect ContextStashStack[-1].MaxStacks set from storage asset:effect MaxStacks
data modify storage asset:effect ContextStashStack[-1].Reason set from storage asset:effect Reason
data modify storage asset:effect ContextStashStack[-1].Reapplied set from storage asset:effect Reapplied
data modify storage asset:effect ContextStashStack[-1].Implement set from storage asset:effect Implement
data modify storage asset:effect ContextStashStack[-1].CopiedExtends set from storage asset:effect CopiedExtends

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
