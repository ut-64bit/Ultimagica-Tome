#> asset:object/proj.elf_arrow/hit_block/
#
# ブロックの衝突時に呼び出されるメソッド
#

# 演出
	particle gust ~ ~ ~ 0 0 0 0 1 force
	playsound entity.wind_charge.wind_burst neutral @a ~ ~ ~ 1.5 1

# 弾丸を破壊する
	function api:common/auto_kill
