#> asset:object/proj.holy_judgement_light/hit_entity/
#
# エンティティの衝突時に呼び出されるメソッド
#

# ダメージを与える
	data modify storage api: in.AttackData set from storage asset:context this.AttackData[0]
	execute positioned ~-1 ~-0.5 ~-1 as @n[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,tag=!Player.NoCollison,dx=1,dz=1] unless function api:damage/is_invincible \
		run function asset:object/proj.holy_judgement_light/hit_entity/give_damage

# 演出
	particle end_rod ~ ~ ~ 0 0 0 0.25 5 normal
	playsound entity.allay.death player @a ~ ~ ~ 0.25 0