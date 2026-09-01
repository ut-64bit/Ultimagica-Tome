#> asset:object/proj.fire_pillar/hit_entity/
#
# エンティティの衝突時に呼び出されるメソッド
#

# ダメージを与える
	data modify storage api: in.AttackData set from storage asset:context this.AttackData
	execute positioned ~-2.5 ~ ~-2.5 as @e[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,tag=!Player.NoCollison,dx=4,dy=6,dz=4] \
		run function asset:object/proj.fire_pillar/hit_entity/give_damage
