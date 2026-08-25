#> asset:object/proj.gravity_flying_debris_runner/place/macro
#

function api:clear_in
$execute positioned ~$(X) ~ ~$(Z) run function api:object/summon.m {ID:"proj.gravity_flying_debris"}
$execute positioned ~$(X) ~ ~$(Z) run particle instant_effect{color:11141290,power:0} ~ ~0.1 ~ 0 0 0 0 1 force
