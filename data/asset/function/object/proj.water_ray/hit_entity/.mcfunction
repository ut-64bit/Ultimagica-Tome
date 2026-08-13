#> asset:object/proj.water_ray/hit_entity/
#
# エンティティの衝突時に呼び出されるメソッド
#

# ダメージを与える
	data modify storage api: in.AttackData set from storage asset:context this.AttackData[0]
	execute positioned ~-0.5 ~-0.5 ~-0.5 as @n[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,dx=0] unless function api:damage/is_invincible \
		run function api:damage/give_damage

# 演出
	particle splash ~ ~ ~ 0.1 0.1 0.1 0 1 normal
	playsound block.pointed_dripstone.drip_water_into_cauldron neutral @a ~ ~ ~ 1.0 1.0

# 弾丸を破壊する
	function api:common/auto_kill
