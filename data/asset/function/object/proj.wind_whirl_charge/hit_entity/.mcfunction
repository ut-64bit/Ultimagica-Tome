#> asset:object/proj.wind_whirl_charge/hit_entity/
#
# エンティティの衝突時に呼び出されるメソッド
#

# ダメージを与える
	execute positioned ~-1.5 ~-1.5 ~-1.5 as @e[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,tag=!Player.NoCollison,dx=2,dy=3,dz=2] unless function api:damage/is_invincible run function asset:object/proj.wind_whirl_charge/hit_entity/give_damage

# 演出
	particle small_gust ~ ~ ~ 0.5 0.5 0.5 0.1 3 normal
	particle sweep_attack ~ ~ ~ 0.3 0.5 0.3 0.1 1 normal

# 弾丸を破壊する
	# function api:common/auto_kill
