#> asset:object/particle.spark/tick/
#
# 毎tick呼び出されるメソッド
#

function asset:object/super.tick

execute if score @s General.Tick matches 1 run data merge entity @s { transformation:{ scale:[3,3,3] }, interpolation_duration:14, start_interpolation:0 }
