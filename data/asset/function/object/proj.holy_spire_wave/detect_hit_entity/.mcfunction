#> asset:object/proj.magic_bullet/detect_hit_entity/
#
# エンティティの衝突検知に使われるメソッド
#

# エンティティに当たったかどうか判定する
	execute positioned ~-0.5 ~ ~-0.5 as @e[type=!#lib:no_living,tag=!_owner,tag=!_this,dy=2] run data modify storage asset:context IsHitEntity set value true
