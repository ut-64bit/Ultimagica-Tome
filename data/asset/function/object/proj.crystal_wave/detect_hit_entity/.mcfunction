#> asset:object/proj.crystal_wave/detect_hit_entity/
#
# エンティティの衝突検知に使われるメソッド
#

# エンティティに当たったかどうか判定する
	execute positioned ~-0.75 ~-0.5 ~-0.75 as @e[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,tag=!Player.NoCollison,dx=0.5,dz=0.5] unless function api:damage/is_invincible run data modify storage asset:context IsHitEntity set value true
