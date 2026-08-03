#> asset:object/abstract.beam/init/shot_ray
#

# 再帰開始！
	execute summon marker run function asset:object/abstract.beam/init/start_rec

# ビームの長さを設定する
	execute on passengers run function asset:object/abstract.beam/main/set_beam.m with storage asset:context this

# あとしまつ
	scoreboard players reset #MoveCount _
