#> asset:object/proj.holy_spire/tick/
#
# 毎tick呼び出されるメソッド
#

# 発射者を取得する
	execute if predicate asset:valid_owner_id run function asset:object/abstract.projectile/tick/get_owner
	execute if predicate asset:valid_target_id run function asset:object/abstract.projectile/tick/get_target

# ターゲットを拘束する
	execute if predicate asset:valid_target_id run function asset:object/proj.holy_spire/tick/bind

# State
	data modify storage asset:temp StateCpy set from storage asset:context this.State
	execute if data storage asset:temp {StateCpy:"idle"} run function asset:object/proj.holy_spire/tick/state_idle
	execute if data storage asset:temp {StateCpy:"move"} run function asset:object/proj.holy_spire/tick/state_move
	execute if data storage asset:temp {StateCpy:"block_idle"} run function asset:object/proj.holy_spire/tick/state_block_idle
	data remove storage asset:temp StateCpy

# あとしまつ
	execute as @n[tag=_owner,distance=..1000] run tag @s remove _owner
	execute as @n[tag=_target,distance=..1000] run tag @s remove _target
