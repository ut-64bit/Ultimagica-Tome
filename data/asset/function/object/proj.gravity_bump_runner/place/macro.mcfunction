#> asset:object/proj.gravity_bump_runner/place/macro
#

function api:clear_in
data modify storage api: in.FieldOverride.AttackData set from storage asset:context this.AttackData
$execute positioned ~$(X) ~ ~$(Z) run function api:object/summon.m {ID:"proj.gravity_bump"}

# 演出
particle explosion ~ ~ ~ 0 0 0 0 1 force
