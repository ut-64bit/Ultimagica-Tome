#> asset:object/proj.magic_turret/destroy/
#
# 破棄する直前に呼ばれる処理
#

playsound block.glass.break neutral @a ~ ~ ~ 0.8 1.0
# particle firework ~ ~ ~ 0 0 0 0.1 3 normal
particle instant_effect{color:16730367} ~ ~ ~ 0 0 0 0.1 3 force
