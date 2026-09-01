#> asset:object/proj.fire_pillar/detect_hit_entity/
#
# エンティティの衝突検知に使われるメソッド
#

# エンティティに当たったかどうか判定する
	execute positioned ~-2.5 ~ ~-2.5 as @e[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,tag=!Player.NoCollison,dx=4,dy=6,dz=4] run data modify storage asset:context IsHitEntity set value true
