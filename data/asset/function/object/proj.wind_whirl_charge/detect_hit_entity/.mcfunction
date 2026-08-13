#> asset:object/proj.wind_whirl_charge/detect_hit_entity/
#
# エンティティの衝突検知に使われるメソッド
#

# エンティティに当たったかどうか判定する
	execute positioned ~-1.5 ~-2 ~-1.5 as @e[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,dx=2,dy=3,dz=2] unless function api:damage/is_invincible run data modify storage asset:context IsHitEntity set value true
