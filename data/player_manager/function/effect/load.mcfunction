#> player_manager:effect/load

# data removeはストレージIDだけでは実行できないため、使用するルートキーを個別に初期化する。
data remove storage effect:runtime Busy
data remove storage effect:runtime Operations

data remove storage effect:context Queue
data remove storage effect:context Next
data remove storage effect:context Current
data remove storage effect:context Operation
data remove storage effect:context Request
data remove storage effect:context Reason

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
data remove storage asset:effect ContextStashStack
