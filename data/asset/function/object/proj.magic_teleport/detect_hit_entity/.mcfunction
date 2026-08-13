#> asset:object/proj.magic_teleport/detect_hit_entity/
#
# エンティティの衝突検知に使われるメソッド
#

# エンティティに当たったかどうか判定する
	execute positioned ~-0.125 ~-0.125 ~-0.125 as @e[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,dx=0] \
			positioned ~-0.75 ~-0.75 ~-0.75 if entity @s[dx=0] unless function api:damage/is_invincible run data modify storage asset:context IsHitEntity set value true