#> asset:object/proj.holy_judgement_light/hit_entity/give_damage
#

function api:damage/give_damage

# 怯む
	function api:player/stagger {duration:8}
	effect give @s slowness 1 9 true
