#> asset:object/proj.fire_wall/hit_entity/
#
# エンティティの衝突時に呼び出されるメソッド
#

# ダメージを与える
	data modify storage api: in.AttackData set from storage asset:context this.AttackData
	execute positioned ~-0.5 ~ ~-0.5 as @e[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,tag=!Player.NoCollison,dx=0,dy=3,dz=0] \
		run function api:damage/give_damage
