#> asset:object/skill_fire/hit_entity/

data modify storage api: in.AttackData set from storage asset:context this.AttackData
execute positioned ~-0.5 ~ ~-0.5 as @e[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,tag=!Player.NoCollison,dx=0,dy=0,dz=0] unless function api:damage/is_invincible run function api:damage/give_damage
