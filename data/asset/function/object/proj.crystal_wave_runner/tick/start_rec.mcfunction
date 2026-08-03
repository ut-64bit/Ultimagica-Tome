#> asset:object/proj.crystal_wave_runner/tick/start_rec
#

# 速度から動く回数を取得する
	data modify storage asset:temp MoveCount set from storage asset:context this.Speed

# 再帰で動かす
	execute unless data storage asset:context this{RemainingRange:0} unless data storage asset:temp {MoveCount:0} at @s run function asset:object/proj.crystal_wave_runner/tick/rec.m with storage asset:context this

# あとしまつ
	data remove storage asset:temp MoveCount
