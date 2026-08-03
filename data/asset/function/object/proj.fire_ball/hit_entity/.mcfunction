#> asset:object/proj.fire_ball/hit_entity/
#
# エンティティの衝突時に呼び出されるメソッド
#

# 爆発
	function asset:object/proj.fire_ball/explode

# ダメージを与える
	data modify storage api: in.AttackData set from storage asset:context this.AttackData[1]
	execute positioned ~-0.5 ~-0.5 ~-0.5 as @n[type=!#lib:no_living,tag=!_owner,tag=!_this,dx=0] unless function api:damage/is_invincible \
		run function api:damage/give_damage

# 弾丸を破壊する
	function api:common/auto_kill
