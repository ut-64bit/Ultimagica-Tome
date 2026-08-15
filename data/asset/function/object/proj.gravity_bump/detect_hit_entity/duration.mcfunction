#> asset:object/proj.gravity_bump/detect_hit_entity/duration
#
# エンティティの衝突検知に使われるメソッド
#

# エンティティに当たったかどうか判定する
	execute positioned ~-0.75 ~ ~-0.75 as @e[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,tag=!Player.NoCollison,dx=0.5,dy=1.5,dz=0.5] run data modify storage asset:context IsHitEntity set value true
