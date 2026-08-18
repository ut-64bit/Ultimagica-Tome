#> asset:object/proj.elf_shot/detect_hit_entity/
#
# エンティティの衝突検知に使われるメソッド
#

# エンティティに当たったかどうか判定する
	execute positioned ~-0.75 ~-0.75 ~-0.75 if entity @n[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,tag=!Player.NoCollison,tag=!Dodge,dx=0.5,dy=0.5,dz=0.5] run data modify storage asset:context IsHitEntity set value true
