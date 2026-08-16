#> asset:object/proj.fire_beam_base/tick/shot/spread

# 拡散
	$execute as @n[tag=_owner,distance=..1000] positioned ^$(X) ^$(Y) ^0.1 run function asset:object/proj.fire_beam_base/tick/shot/shot
