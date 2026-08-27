#> asset:effect/skill_thunder_stacker/end/
# 時間切れでスタックを減らす

# スタックを1減らす
	execute store result storage asset:context Stacks int 0.9999999999 run data get storage asset:context Stacks
	execute if data storage asset:context {Stacks:0} run return run function asset:effect/call.m {method:"remove"}

# 10tickごとにスタックを減らす
	data modify storage asset:context Duration set value 10
