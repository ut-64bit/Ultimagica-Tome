#> asset:object/proj.water_rain_rain/detect_hit_entity/
#
# エンティティの衝突検知に使われるメソッド
#

# エンティティに当たったかどうか判定する
	execute positioned ~-1 ~-0.5 ~-1 as @e[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,dx=1,dz=1] unless function api:damage/is_invincible run data modify storage asset:context IsHitEntity set value true
