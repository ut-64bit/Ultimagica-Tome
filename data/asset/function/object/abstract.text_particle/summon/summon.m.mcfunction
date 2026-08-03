#> asset:object/abstract.text_particle/summon/summon.m
#

$summon text_display ~ ~ ~ { Tags:[ "_init" ], text:{ text:"\u1001\u0000", font:"$(font)" }, background:0,\
	transformation:{ right_rotation:[0,0,0,1], scale:[$(scale),$(scale),$(scale)], left_rotation:[0,0,0,1], translation:[0,0,0] },\
	brightness:{ sky:15, block:15 }, shadow_radius:0, billboard:"$(billboard)" }
