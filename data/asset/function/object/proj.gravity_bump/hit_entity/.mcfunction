#> asset:object/proj.gravity_bump/hit_entity/
#
# エンティティの衝突時に呼び出されるメソッド
#

execute if score @s General.Tick matches 25.. run return run function asset:object/proj.gravity_bump/hit_entity/duration

# ダメージを与える
	data modify storage api: in.AttackData set from storage asset:context this.AttackData[0]
	execute positioned ~-0.75 ~ ~-0.75 as @e[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,tag=!Player.NoCollison,dx=0.5,dy=1.5,dz=0.5] unless function api:damage/is_invincible \
		run function api:damage/give_damage
