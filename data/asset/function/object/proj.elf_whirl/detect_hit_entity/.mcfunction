#> asset:object/proj.elf_whirl/detect_hit_entity/
#
# エンティティの衝突検知に使われるメソッド
#

# エンティティに当たったかどうか判定する
	execute positioned ~-1.25 ~-1.5 ~-1.25 as @e[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,tag=!Player.NoCollison,dx=1.5,dy=2,dz=1.5] unless function api:damage/is_invincible run data modify storage asset:context IsHitEntity set value true
