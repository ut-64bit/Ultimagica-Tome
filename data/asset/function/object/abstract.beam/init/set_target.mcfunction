#> asset:object/abstract.beam/init/set_target
#

# 引き継ぐ
	execute unless data storage asset:context this.TargetID run scoreboard players operation @s TargetID = @n[tag=_this,distance=..1000] TargetID

# 手動で設定する
	execute if data storage asset:context this.TargetID store result score @s TargetID run data get storage asset:context this.TargetID

# 0ならリセットする
	execute if score @s TargetID matches 0 run scoreboard players reset @s TargetID
