#> asset:object/proj.gravity_flying_debris_runner/tick/
#
# 毎tick呼び出されるメソッド
#

# State
	data modify storage asset:temp StateCpy set from storage asset:context this.State
	execute if data storage asset:temp {StateCpy:"delay"} run function asset:object/proj.gravity_flying_debris_runner/tick/state_delay/
	execute if data storage asset:temp {StateCpy:"move"} run function asset:object/super.tick
	data remove storage asset:temp StateCpy
