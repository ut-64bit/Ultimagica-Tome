#> asset:object/proj.holy_spire/detect_hit_entity/
#
# エンティティの衝突検知に使われるメソッド
#

# エンティティに当たったかどうか判定する
	execute positioned ~-0.3 ~-0.3 ~-0.3 as @e[type=!#lib:no_living,tag=!_owner,tag=!_this,dx=0] \
		positioned ~-0.4 ~-0.4 ~-0.4 if entity @s[dx=0] unless function api:damage/is_invincible run data modify storage asset:context IsHitEntity set value true
