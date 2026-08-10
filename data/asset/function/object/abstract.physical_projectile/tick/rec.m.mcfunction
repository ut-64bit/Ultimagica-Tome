#> asset:object/abstract.physical_projectile/tick/rec.m
#

# 再帰内で実行するメソッド
	function asset:object/call.m {method:"recursive"}

# エンティティの衝突
	# 判定
		function asset:object/call.m {method:"detect_hit_entity"}
	# メソッド実行
		execute if data storage asset:context {IsHitEntity:true} run function asset:object/call.m {method:"hit_entity"}
		data remove storage asset:context IsHitEntity

# ブロックの衝突
	# 判定
		$execute positioned ^ ^ ^-$(MovePerStep) run function asset:object/call.m {method:"detect_hit_block"}
	# メソッド実行
		execute if data storage asset:context {IsHitBlock:true} run function asset:object/call.m {method:"hit_block"}
		data remove storage asset:context IsHitBlock

# 残りの距離を減らす
	execute store result storage asset:context this.RemainingRange int 0.9999999999 run data get storage asset:context this.RemainingRange
# 距離を使い果たした場合
	execute if data storage asset:context this{RemainingRange:0} run function asset:object/call.m {method:"range_over"}

# 再帰
	$execute unless entity @s[distance=..$(MovePerStep)] unless data storage asset:context {StopMove:true} if entity @s[tag=!KillFlag] unless data storage asset:context this{RemainingRange:0} positioned ^ ^ ^$(MovePerStep) run return run function asset:object/abstract.physical_projectile/tick/rec.m with storage asset:context this
	$execute if entity @s[distance=0.01..$(MovePerStep)] unless data storage asset:context {StopMove:true} if entity @s[tag=!KillFlag] unless data storage asset:context this{RemainingRange:0} positioned as @s run return run function asset:object/abstract.physical_projectile/tick/rec.m with storage asset:context this
	data remove storage asset:context StopMove

# 再帰が終わったら移動する
	tp @s ~ ~ ~ ~ ~
