#> asset:object/proj.holy_spire_wave_runner/place/macro
#

function api:clear_in
data modify storage api: in.FieldOverride.AttackData set from storage asset:context this.AttackData
$execute positioned ^$(X) ^ ^ run function api:object/summon.m {ID:"proj.holy_spire_wave"}
