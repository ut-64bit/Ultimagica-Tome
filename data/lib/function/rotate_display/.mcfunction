#> lib:rotate_display/
#
# 現在の向きに合わせてディスプレイを回転させる
#

# 原点から現在の向きの真横1ブロックへマーカーを移動 & 同じ向きに
	execute positioned 0.0 0.0 0.0 run tp 0-0-0-0-0 ^1 ^ ^ ~ ~

# マーカーの座標をストレージに代入
	data modify storage lib:temp left_rotation.axis set from entity 0-0-0-0-0 Pos

# マーカーの横角度をストレージに代入
	execute store result storage lib:temp right_rotation.angle float 0.000001745 run data get entity 0-0-0-0-0 Rotation[0] 10000

# 回転軸設定
	data modify storage lib:temp right_rotation.axis set value [0,-1,0]

# execute幾何学で、縦角度[-90~90]⇒横角度[0~180]に変換
	execute rotated -90 ~ positioned 0.0 0.0 0.0 positioned ^ ^ ^1 rotated ~90 ~ positioned ^ ^1 ^ facing 0.0 ~ 0.0 run tp 0-0-0-0-0 0.0 0.0 0.0 ~ ~

# マーカーの横角度をストレージに代入
	execute store result storage lib:temp left_rotation.angle float 0.000001745 run data get entity 0-0-0-0-0 Rotation[0] 10000

# ストレージからディスプレイに書き込み
	data modify entity @s transformation.left_rotation set from storage lib:temp left_rotation
	data modify entity @s transformation.right_rotation set from storage lib:temp right_rotation

# あとしまつ
	data remove storage lib:temp left_rotation
	data remove storage lib:temp right_rotation
