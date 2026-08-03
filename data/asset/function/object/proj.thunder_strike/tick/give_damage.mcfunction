#> asset:object/proj.thunder_strike/tick/give_damage
#

# ダメージを与える
	data modify storage api: in.AttackData set from storage asset:context this.AttackData[0]
	execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#lib:no_living,tag=!_owner,tag=!_this,dy=3] unless function api:damage/is_invincible run function api:damage/give_damage
