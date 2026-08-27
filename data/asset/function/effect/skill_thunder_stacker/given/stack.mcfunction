#> asset:effect/skill_thunder_stacker/given/stack
# スタック数を動的に決められるようにする

# 標準処理ですでに+1されているため、追加で StackIncrease-1 を加算する
	execute store result score #StackIncrease _ run data get storage asset:context this.StackIncrease
	scoreboard players remove #StackIncrease _ 1

	execute store result score #EffectStacks _ run data get storage asset:context Stacks
	scoreboard players operation #EffectStacks _ += #StackIncrease _

# MaxStacksを超えないようにする
	execute store result score #EffectMaxStacks _ run data get storage asset:context MaxStacks
	scoreboard players operation #EffectStacks _ < #EffectMaxStacks _

# 適用する
	execute store result storage asset:context Stacks int 1 run scoreboard players get #EffectStacks _

# あとしまつ
	scoreboard players reset #StackIncrease _
	scoreboard players reset #EffectStacks _
	scoreboard players reset #EffectMaxStacks _
