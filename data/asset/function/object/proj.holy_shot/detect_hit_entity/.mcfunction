#> asset:object/proj.holy_shot/detect_hit_entity/
#
# エンティティの衝突検知に使われるメソッド
#

# エンティティに当たったかどうか判定する
	execute positioned ~-0.2 ~-0.2 ~-0.2 as @e[type=!#lib:no_living,tag=!_owner,tag=!_this,dx=0] \
			positioned ~-0.6 ~-0.6 ~-0.6 if entity @s[dx=0] unless function api:damage/is_invincible run data modify storage asset:context IsHitEntity set value true
