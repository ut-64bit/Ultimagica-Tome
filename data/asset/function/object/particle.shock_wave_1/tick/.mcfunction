#> asset:object/particle.shock_wave_1/tick/
#
# 毎tick呼び出されるメソッド
#

function asset:object/super.tick

execute if score @s General.Tick matches 1 run data merge entity @s { transformation:{ scale:[1.2,1.2,1.2] }, interpolation_duration:6, start_interpolation:0 }
