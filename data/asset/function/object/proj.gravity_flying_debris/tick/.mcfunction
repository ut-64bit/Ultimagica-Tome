#> asset:object/proj.gravity_flying_debris/tick/
#
# 毎tick呼び出されるメソッド
#

# 発射者を取得する
	execute if predicate asset:valid_owner_id run function asset:object/abstract.projectile/tick/get_owner

# State
	data modify storage asset:temp StateCpy set from storage asset:context this.State
	execute if data storage asset:temp {StateCpy:"idle"} run function asset:object/proj.gravity_flying_debris/tick/state_idle/
	execute if data storage asset:temp {StateCpy:"move"} run function asset:object/proj.gravity_flying_debris/tick/state_move/
	data remove storage asset:temp StateCpy

# あとしまつ
	execute as @n[tag=_owner,distance=..1000] run tag @s remove _owner
