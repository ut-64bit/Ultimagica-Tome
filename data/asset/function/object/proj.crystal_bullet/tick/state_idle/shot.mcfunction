#> asset:object/proj.crystal_bullet/tick/state_idle/shot
#

data modify storage asset:context this.State set value "move"

	playsound item.firecharge.use player @a ~ ~ ~ 1 1
	playsound entity.player.attack.sweep player @a ~ ~ ~ 0.8 1.3
