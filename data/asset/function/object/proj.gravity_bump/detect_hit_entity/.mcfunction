#> asset:object/proj.gravity_bump/detect_hit_entity/
#
# エンティティの衝突検知に使われるメソッド
#

execute if score @s General.Tick matches 25.. run return run function asset:object/proj.gravity_bump/detect_hit_entity/duration

# エンティティに当たったかどうか判定する
	execute positioned ~-0.75 ~ ~-0.75 as @e[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,tag=!Player.NoCollison,dx=0.5,dy=1.5,dz=0.5] unless function api:damage/is_invincible run data modify storage asset:context IsHitEntity set value true
