#> asset:object/proj.fire_breath/hit_entity/
#
# エンティティの衝突時に呼び出されるメソッド
#

# ダメージを与える
	data remove storage api: out.GiveDamage
	data modify storage api: in.AttackData set from storage asset:context this.AttackData[0]
	execute positioned ~-0.5 ~-0.5 ~-0.5 as @n[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,tag=!Player.NoCollison,dx=0] unless function api:damage/is_invincible \
		run function api:damage/give_damage

# 演出
	execute if data storage api: out{GiveDamage:true} run playsound entity.player.hurt_on_fire player @a ~ ~ ~ 1 1

# 弾丸を破壊する
	function api:common/auto_kill
