#> asset:object/proj.holy_spire/hit_entity/give_damage
#

function api:damage/give_damage

execute unless score @n[tag=_this,distance=..8] TargetID matches -2147483648..2147483647 run ride @s mount @n[tag=_this,distance=..8]
execute unless score @n[tag=_this,distance=..8] TargetID matches -2147483648..2147483647 store result score @n[tag=_this,distance=..8] TargetID run function lib:entity_id/get
