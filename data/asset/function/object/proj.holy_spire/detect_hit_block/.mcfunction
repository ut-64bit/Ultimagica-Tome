#> asset:object/proj.holy_spire/detect_hit_block/
#
# ブロックの衝突検知に使われるメソッド
#

# ブロックに当たったかどうか判定する
	execute if predicate lib:has_passenger run function asset:object/proj.holy_spire/detect_hit_block/on_passenger
	execute unless predicate lib:has_passenger run function asset:object/proj.holy_spire/detect_hit_block/no_passenger
