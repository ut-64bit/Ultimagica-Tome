#> asset:object/proj.elf_shot/hit_entity/
#
# エンティティの衝突時に呼び出されるメソッド
#

# ダメージを与える
	data modify storage api: in.AttackData set from storage asset:context this.AttackData[0]
	execute positioned ~-0.75 ~-0.75 ~-0.75 as @n[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,tag=!Player.NoCollison,tag=!Dodge,dx=0.5,dy=0.5,dz=0.5] unless function api:damage/is_invincible \
		run function api:damage/give_damage

# 演出
	particle gust ~ ~ ~ 0 0 0 0 1 force
	playsound entity.wind_charge.wind_burst neutral @a ~ ~ ~ 1.5 1

# 弾丸を破壊する
	function api:common/auto_kill
