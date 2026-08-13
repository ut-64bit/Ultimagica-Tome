#> asset:object/proj.wind_whirl/hit_entity/
#
# エンティティの衝突時に呼び出されるメソッド
#

# ダメージを与える
	data modify storage api: in.AttackData set from storage asset:context this.AttackData
	execute positioned ~-1.25 ~-1.5 ~-1.25 as @e[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,dx=1.5,dy=2,dz=1.5] unless function api:damage/is_invincible \
		positioned ~1.25 ~1.5 ~1.25 run function asset:object/proj.wind_whirl/hit_entity/give_damage

# 演出
	particle small_gust ~ ~ ~ 0.5 0.5 0.5 0.1 3 normal
	particle sweep_attack ~ ~ ~ 0.3 0.5 0.3 0.1 1 normal

# 弾丸を破壊する
	# function api:common/auto_kill
