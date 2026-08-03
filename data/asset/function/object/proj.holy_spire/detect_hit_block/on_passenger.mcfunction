#> asset:object/proj.holy_spire/detect_hit_block/on_passenger
#

execute unless data storage asset:context {IsHitBlock:true} positioned ~0.4 ~ ~ run function asset:object/proj.holy_spire/detect_hit_block/no_passenger
execute unless data storage asset:context {IsHitBlock:true} positioned ~-.4 ~ ~ run function asset:object/proj.holy_spire/detect_hit_block/no_passenger
execute unless data storage asset:context {IsHitBlock:true} positioned ~ ~0.4 ~ run function asset:object/proj.holy_spire/detect_hit_block/no_passenger
execute unless data storage asset:context {IsHitBlock:true} positioned ~ ~-.4 ~ run function asset:object/proj.holy_spire/detect_hit_block/no_passenger
execute unless data storage asset:context {IsHitBlock:true} positioned ~ ~ ~0.4 run function asset:object/proj.holy_spire/detect_hit_block/no_passenger
execute unless data storage asset:context {IsHitBlock:true} positioned ~ ~ ~-.4 run function asset:object/proj.holy_spire/detect_hit_block/no_passenger
