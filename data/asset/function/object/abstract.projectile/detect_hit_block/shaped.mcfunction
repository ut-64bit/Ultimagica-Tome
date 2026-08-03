#> asset:object/abstract.projectile/detect_hit_block/shaped
#

execute align xyz if predicate lib:block_check/shaped run data modify storage asset:context IsHitBlock set value true

# あとしまつ
	kill @s
