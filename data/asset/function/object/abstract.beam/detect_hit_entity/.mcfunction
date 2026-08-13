#> asset:object/abstract.beam/detect_hit_entity/
#
# エンティティの衝突検知に使われるメソッド
#

# エンティティに当たったかどうか判定する
	execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @n[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,dx=0] unless function api:damage/is_invincible run data modify storage asset:context IsHitEntity set value true
