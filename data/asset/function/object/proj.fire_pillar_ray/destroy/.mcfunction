#> asset:object/proj.fire_pillar_ray/destroy/
#
# 破棄する直前に呼ばれる処理
#

execute align y run function asset:object/proj.fire_pillar_ray/destroy/ray_floor
data remove storage asset:context IsHitBlock
