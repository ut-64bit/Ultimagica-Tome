#> asset:effect/movement_speed_down/register

data modify storage asset:effect Extends append value "abstract.effect"
function asset:effect/_extends/
data modify storage asset:effect IsAbstract set value false
data modify storage asset:effect ID set value "movement_speed_down"

data modify storage asset:effect Duration set value 100
data modify storage asset:effect Groups set value ["debuff"]
data modify storage asset:effect Reapply set value "refresh"
data modify storage asset:effect Field set value {}
