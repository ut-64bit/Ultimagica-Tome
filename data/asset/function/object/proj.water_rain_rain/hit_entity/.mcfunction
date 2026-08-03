#> asset:object/proj.water_rain_rain/hit_entity/
#
# エンティティの衝突時に呼び出されるメソッド
#

# ダメージを与える
	data modify storage api: in.AttackData set from storage asset:context this.AttackData[0]
	execute positioned ~-1 ~-0.5 ~-1 as @n[type=!#lib:no_living,tag=!_owner,tag=!_this,dx=1,dz=1] unless function api:damage/is_invincible \
		run function api:damage/give_damage

# 演出
	# particle dripping_water ~ ~ ~ 1 0 1 0 5 normal
	# playsound item.bucket.empty neutral @a ~ ~ ~ 1.0 1.3

# 弾丸を破壊する
	# function api:common/auto_kill
