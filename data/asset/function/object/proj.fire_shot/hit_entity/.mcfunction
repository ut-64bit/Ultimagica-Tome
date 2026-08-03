#> asset:object/proj.fire_shot/hit_entity/
#
# エンティティの衝突時に呼び出されるメソッド
#

# ダメージを与える
	data modify storage api: in.AttackData set from storage asset:context this.AttackData[0]
	execute positioned ~-0.5 ~-0.5 ~-0.5 as @n[type=!#lib:no_living,tag=!_owner,tag=!_this,dx=0] unless function api:damage/is_invincible \
		run function api:damage/give_damage

# 演出
	particle flame ~ ~ ~ 0 0 0 0.1 3 normal
	particle smoke ~ ~ ~ 0.1 0.1 0.1 0 3 normal
	playsound block.fire.extinguish neutral @a ~ ~ ~ 1 1.5

# 弾丸を破壊する
	function api:common/auto_kill
