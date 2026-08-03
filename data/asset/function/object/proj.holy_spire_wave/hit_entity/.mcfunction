#> asset:object/proj.magic_bullet/hit_entity/
#
# エンティティの衝突時に呼び出されるメソッド
#

# ダメージを与える
	data modify storage api: in.AttackData set from storage asset:context this.AttackData[0]
	execute positioned ~-0.5 ~ ~-0.5 as @e[type=!#lib:no_living,tag=!_owner,tag=!_this,dy=2] unless function api:damage/is_invincible \
		run function asset:object/proj.holy_spire_wave/hit_entity/give_damage
