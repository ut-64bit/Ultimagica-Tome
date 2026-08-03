#> asset:object/proj.water_bullet_charge/recursive/
#
# 毎ステップの移動時に呼び出されるメソッド
#

# ホーミング
	execute unless score @s TargetID matches -2147483648..2147483647 positioned ^ ^ ^-100 rotated as @n[tag=_owner,distance=..1000] positioned ^ ^ ^-10 facing entity @s feet run rotate @s ~ ~
	execute if predicate asset:valid_target_id run function asset:object/proj.water_bullet_charge/recursive/homing
	execute unless score @s TargetID matches -2147483648..2147483647 run function asset:object/proj.water_bullet_charge/recursive/set_target

# 演出
	particle enchant ^ ^ ^ 0.2 0.2 0.2 0 1 normal
	particle bubble ^ ^ ^ 0 0 0 0 1 normal
	particle dust{color:3481599,scale:1.0} ^ ^ ^ 0 0 0 0 1 force
	particle dust{color:4773119,scale:0.5} ^ ^ ^ 0.1 0.1 0.1 0 1 force
