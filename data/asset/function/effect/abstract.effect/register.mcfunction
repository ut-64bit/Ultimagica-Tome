#> asset:effect/abstract.effect/register
# Effectの基底クラス。

data modify storage asset:effect IsAbstract set value true
data modify storage asset:effect ID set value "abstract.effect"

# 全Effectに共通する既定値。Fieldには含めない。
data modify storage asset:effect Duration set value 1
data modify storage asset:effect Stacks set value 1
data modify storage asset:effect Groups set value []
data modify storage asset:effect Reapply set value "refresh"
data modify storage asset:effect MaxStacks set value 1
data modify storage asset:effect Field set value {}
