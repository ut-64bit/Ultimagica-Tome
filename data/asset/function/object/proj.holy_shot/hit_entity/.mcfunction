#> asset:object/proj.holy_shot/hit_entity/
#
# エンティティの衝突時に呼び出されるメソッド
#

# リセット
	data remove storage api: out.GiveDamage

# ダメージを与える
	data modify storage api: in.AttackData set from storage asset:context this.AttackData[0]
	execute positioned ~-0.5 ~-0.5 ~-0.5 as @n[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,tag=!Player.NoCollison,dx=0] unless function api:damage/is_invincible \
		run function api:damage/give_damage

# 演出
	playsound item.trident.hit_ground neutral @a ~ ~ ~ 1.5 1

# 弾丸を破壊する
	function api:common/auto_kill
