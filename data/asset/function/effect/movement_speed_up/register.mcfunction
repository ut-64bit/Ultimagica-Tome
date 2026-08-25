#> asset:effect/movement_speed_up/register
# 移動速度上昇Effectの継承関係と既定値を登録する。

data modify storage asset:effect Extends append value "abstract.effect"
function asset:effect/_extends/
data modify storage asset:effect IsAbstract set value false
data modify storage asset:effect ID set value "movement_speed_up"

data modify storage asset:effect Duration set value 200
data modify storage asset:effect Groups set value ["buff"]
data modify storage asset:effect Reapply set value "refresh"
data modify storage asset:effect Field set value {}
