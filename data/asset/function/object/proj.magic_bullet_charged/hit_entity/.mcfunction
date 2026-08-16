#> asset:object/proj.magic_bullet_charged/hit_entity/
#
# エンティティの衝突時に呼び出されるメソッド
#

# ダメージを与える
	data modify storage api: in.AttackData set from storage asset:context this.AttackData[0]
	execute positioned ~-0.5 ~-0.5 ~-0.5 as @n[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,tag=!Player.NoCollison,dx=0] unless function api:damage/is_invincible \
		run function asset:object/proj.magic_bullet_charged/hit_entity/give_damage

# 演出
	execute if data storage api: out{GiveDamage:true} run particle firework ~ ~ ~ 0 0 0 0.1 5 force
	execute if data storage api: out{GiveDamage:true} run playsound entity.firework_rocket.blast neutral @a ~ ~ ~ 1.5 1
