#> asset:object/abstract.physical_projectile/tick/start_rec.m
#

# マクロで目標地点に移動する
	function asset:object/abstract.physical_projectile/tick/tp.m with storage asset:context this.Velocity

# 目標地点まで再帰で実行座標を動かす
	$execute unless entity @s[distance=..$(MovePerStep)] if score @s OhMyDatID matches -2147483648..2147483647 unless data storage asset:context this{RemainingRange:0} unless data storage asset:temp {MoveCount:0} facing entity @s feet positioned ^ ^ ^$(MovePerStep) run return run function asset:object/abstract.physical_projectile/tick/rec.m with storage asset:context this
	$execute if entity @s[distance=0.01..$(MovePerStep)] if score @s OhMyDatID matches -2147483648..2147483647 unless data storage asset:context this{RemainingRange:0} unless data storage asset:temp {MoveCount:0} positioned as @s run return run function asset:object/abstract.physical_projectile/tick/rec.m with storage asset:context this
