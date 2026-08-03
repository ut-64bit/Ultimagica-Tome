#> asset:object/proj.water_bom/recursive/
#
# 毎ステップの移動時に呼び出されるメソッド
#

# ホーミング
	# execute positioned ^ ^ ^-100 rotated as @n[tag=_owner,distance=..1000] positioned ^ ^ ^-10 facing entity @s feet run rotate @s ~ ~

# 演出
	particle enchant ^ ^ ^ 0.3 0.3 0.3 0 1 normal
	particle bubble ^ ^ ^ 0.5 0.5 0.5 0 1 normal
	particle dust{color:3481599,scale:3.0} ^ ^ ^ 0.1 0.1 0.1 0 1 force
	particle dust{color:4773119,scale:2.0} ^ ^ ^ 0 0 0 0 1 force
