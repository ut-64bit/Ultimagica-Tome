#> asset:object/abstract.projectile/tick/rec.m
#

# 再帰内で実行するメソッド
	function asset:object/call.m {method:"recursive"}

# エンティティへの衝突
	function asset:object/call.m {method:"detect_hit_entity"}
	execute if data storage asset:context {IsHitEntity:true} run function asset:object/call.m {method:"hit_entity"}
	data remove storage asset:context IsHitEntity

# ブロックへの衝突
	$execute positioned ^ ^ ^$(MovePerStep) run function asset:object/call.m {method:"detect_hit_block"}
	execute if data storage asset:context {IsHitBlock:true} run function asset:object/call.m {method:"hit_block"}
	data remove storage asset:context IsHitBlock

# 残りの距離を減らす
	execute store result storage asset:context this.RemainingRange int 0.9999999999 run data get storage asset:context this.RemainingRange 1
# 距離を使い果たした場合
	execute if data storage asset:context this{RemainingRange:0} run function asset:object/call.m {method:"range_over"}

# こいつ...動くぞ！
	$execute if entity @s[tag=!KillFlag] unless data storage asset:context {StopMove:true} at @s run tp @s ^ ^ ^$(MovePerStep) ~ ~

# 再帰
	execute store result storage asset:temp MoveCount int 0.9999999999 run data get storage asset:temp MoveCount
	execute if entity @s[tag=!KillFlag] unless data storage asset:context {StopMove:true} unless data storage asset:context this{RemainingRange:0} unless data storage asset:temp {MoveCount:0} at @s run function asset:object/abstract.projectile/tick/rec.m with storage asset:context this
	data remove storage asset:context StopMove
