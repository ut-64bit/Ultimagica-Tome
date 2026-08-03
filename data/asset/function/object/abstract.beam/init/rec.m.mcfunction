#> asset:object/abstract.beam/init/rec.m
#

# 再帰内で実行するメソッド
	scoreboard players add #MoveCount _ 1

# エンティティの衝突
	# 判定
		function asset:object/call.m {method:"detect_hit_entity"}
	# メソッド実行
		execute if data storage asset:context {IsHitEntity:true} run function api:common/auto_kill
		data remove storage asset:context IsHitEntity

# ブロックの衝突
	# 判定
		$execute positioned ^ ^ ^$(MovePerStep) run function asset:object/call.m {method:"detect_hit_block"}
	# メソッド実行
		execute if data storage asset:context {IsHitBlock:true} run function api:common/auto_kill
		data remove storage asset:context IsHitBlock

# 残りの距離を減らす
	execute store result storage asset:context this.RemainingRange int 0.9999999999 run data get storage asset:context this.RemainingRange 1
# 距離を使い果たした場合
	execute if data storage asset:context this{RemainingRange:0} run function api:common/auto_kill

# こいつ...動くぞ！
	$execute positioned ^ ^ ^$(MovePerStep) rotated as @s run tp @s ~ ~ ~ ~ ~

# 再帰
	execute if score @s _ matches -2147483648..2147483647 unless data storage asset:context this{RemainingRange:0} at @s run function asset:object/abstract.beam/init/rec.m with storage asset:context this
