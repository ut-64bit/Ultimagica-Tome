#> asset:object/abstract.item_particle/summon/summon.m
#

$summon item_display ~ ~ ~ { Tags:[ "_init" ], item:{ id:"barrier", components:{ item_model:"$(item_model)", custom_model_data:{ floats:[1] } } },\
	transformation:{ right_rotation:[0,0,0,1], scale:[$(scale),$(scale),$(scale)], left_rotation:[0,0,0,1], translation:[0,0,0] },\
	brightness:{ sky:15, block:15 }, shadow_radius:0, billboard:"$(billboard)" }
