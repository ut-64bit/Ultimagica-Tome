#> asset:object/abstract.beam/tick/start_rec
#

# 向きを合わせる
	tp @s ~ ~ ~ ~ ~

# 死亡確認用にスコアを設定する
	scoreboard players set @s _ 0

# 残りの距離を初期化する
	data modify storage asset:context this.RemainingRange set from storage asset:context this.Range

# 再帰で動かす
	execute unless data storage asset:context this{RemainingRange:0} at @s run function asset:object/abstract.beam/init/rec.m with storage asset:context this

# あとしまつ
	kill @s
