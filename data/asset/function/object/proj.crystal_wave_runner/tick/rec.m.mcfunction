#> asset:object/proj.crystal_wave_runner/tick/rec.m
#

# 再帰内で実行するメソッド
	function asset:object/call.m {method:"recursive"}

# エンティティへの衝突
	function asset:object/call.m {method:"detect_hit_entity"}
	execute if data storage asset:context {IsHitEntity:true} run function asset:object/call.m {method:"hit_entity"}
	data remove storage asset:context IsHitEntity

# 壁の衝突検知
	$execute positioned ^ ^ ^$(MovePerStep) run function asset:object/call.m {method:"detect_hit_block"}
	data modify storage asset:context IsHitWall set from storage asset:context IsHitBlock
	data remove storage asset:context IsHitBlock

# 移動する
	# 上
		execute if data storage asset:context {IsHitWall:true} positioned ~ ~1 ~ run function asset:object/call.m {method:"detect_hit_block"}
		execute if data storage asset:context {IsHitWall:true} unless data storage asset:context {IsHitBlock:true} run tp @s ~ ~1 ~
		data remove storage asset:context IsHitBlock
	# 下
		execute unless data storage asset:context {IsHitWall:true} positioned ~ ~-1 ~ run function asset:object/call.m {method:"detect_hit_block"}
		execute unless data storage asset:context {IsHitWall:true} unless data storage asset:context {IsHitBlock:true} run tp @s ~ ~-1 ~
		data remove storage asset:context IsHitBlock
	# 前
		execute unless data storage asset:context {IsHitWall:true} at @s run tp @s ^ ^ ^0.25 ~ 0
		data remove storage asset:context IsHitWall

# ブロックに衝突した
	execute if entity @s[distance=..0.01] at @s run function asset:object/call.m {method:"hit_block"}

# 残りの距離を減らす
	execute store result storage asset:context this.RemainingRange int 0.9999999999 run data get storage asset:context this.RemainingRange 1
# 距離を使い果たした場合
	execute if data storage asset:context this{RemainingRange:0} run function asset:object/call.m {method:"range_over"}

# 再帰
	execute store result storage asset:temp MoveCount int 0.9999999999 run data get storage asset:temp MoveCount
	execute if entity @s[tag=!KillFlag] unless data storage asset:context this{RemainingRange:0} unless data storage asset:temp {MoveCount:0} at @s run function asset:object/proj.crystal_wave_runner/tick/rec.m with storage asset:context this
