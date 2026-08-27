#> asset:effect/movement_speed_down/given/
# 移動速度低下の属性Modifierを対象プレイヤーへ設定する。

attribute @s movement_speed modifier remove effect:movement_speed_down
attribute @s movement_speed modifier add effect:movement_speed_down -0.3 add_multiplied_base
