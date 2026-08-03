#> asset:object/proj.magic_teleport/detect_hit_block/
#
# ブロックの衝突検知に使われるメソッド
#

execute unless data storage asset:context {IsHitBlock:true} positioned ~0.4 ~ ~ run function asset:object/abstract.projectile/detect_hit_block/
execute unless data storage asset:context {IsHitBlock:true} positioned ~-.4 ~ ~ run function asset:object/abstract.projectile/detect_hit_block/
execute unless data storage asset:context {IsHitBlock:true} positioned ~ ~0.4 ~ run function asset:object/abstract.projectile/detect_hit_block/
execute unless data storage asset:context {IsHitBlock:true} positioned ~ ~-.4 ~ run function asset:object/abstract.projectile/detect_hit_block/
execute unless data storage asset:context {IsHitBlock:true} positioned ~ ~ ~0.4 run function asset:object/abstract.projectile/detect_hit_block/
execute unless data storage asset:context {IsHitBlock:true} positioned ~ ~ ~-.4 run function asset:object/abstract.projectile/detect_hit_block/
