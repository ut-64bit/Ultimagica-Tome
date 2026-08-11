#> asset:object/proj.holy_spire_wave_runner/place/
#
# 地表にホーリースパイアを設置する
#

execute store result storage asset:temp X float 0.25 run random value -2..2
function asset:object/proj.holy_spire_wave_runner/place/macro with storage asset:temp
data remove storage asset:temp X

# 演出
function asset:object/proj.holy_spire_wave_runner/place/vfx.m with entity @s
