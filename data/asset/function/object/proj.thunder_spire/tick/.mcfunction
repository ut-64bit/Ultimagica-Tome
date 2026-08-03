#> asset:object/proj.thunder_spire/tick/
#
# 毎tick呼び出されるメソッド
#

# 発射者を取得する
	execute if predicate asset:valid_owner_id run function asset:object/abstract.projectile/tick/get_owner
	# execute if predicate asset:valid_target_id run function asset:object/abstract.projectile/tick/get_target

# State
	data modify storage asset:temp StateCpy set from storage asset:context this.State
	execute if data storage asset:temp {StateCpy:"move"} run function asset:object/proj.thunder_spire/tick/state_move
	execute if data storage asset:temp {StateCpy:"hit_idle"} run function asset:object/proj.thunder_spire/tick/state_hit_idle
	data remove storage asset:temp StateCpy

# あとしまつ
	execute as @n[tag=_owner,distance=..1000] run tag @s remove _owner
	# execute as @n[tag=_target,distance=..1000] run tag @s remove _target
