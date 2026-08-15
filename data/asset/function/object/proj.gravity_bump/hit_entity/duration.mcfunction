#> asset:object/proj.gravity_bump/hit_entity/duration
#
# エンティティの衝突時に呼び出されるメソッド
#

# ダメージを与える
	data modify storage api: in.AttackData set from storage asset:context this.AttackData
	execute positioned ~-0.75 ~ ~-0.75 as @e[type=!#lib:no_living,tag=!_owner,tag=!_this,tag=!Game.Observer,tag=!Player.NoCollison,dx=0.5,dy=1.5,dz=0.5] \
		run function api:damage/give_damage

# 弾丸を破壊する
	function api:common/auto_kill
