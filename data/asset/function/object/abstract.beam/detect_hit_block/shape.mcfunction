#> asset:object/abstract.beam/detect_hit_block/shape
#

execute if block ~ ~ ~ #slabs align xyz unless predicate lib:block_check/slab run data modify storage asset:context IsHitBlock set value false
execute if block ~ ~ ~ #stairs align xyz unless predicate lib:block_check/stair run data modify storage asset:context IsHitBlock set value false
execute if block ~ ~ ~ #doors align xyz unless predicate lib:block_check/door run data modify storage asset:context IsHitBlock set value false
execute if block ~ ~ ~ #walls align xyz unless predicate lib:block_check/wall run data modify storage asset:context IsHitBlock set value false

# あとしまつ
	kill @s
