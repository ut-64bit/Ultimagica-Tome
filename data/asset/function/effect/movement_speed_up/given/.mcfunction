#> asset:effect/movement_speed_up/given/
# 移動速度上昇の属性Modifierを対象プレイヤーへ設定する。

attribute @s movement_speed modifier remove effect:movement_speed_up
attribute @s movement_speed modifier add effect:movement_speed_up 0.2 add_multiplied_base
