#> asset:object/proj.water_bullet_charge/recursive/homing
#

# 前方にターゲットがいないならホーミングをやめる
	execute facing entity @n[tag=_target,distance=..1000] eyes positioned ^ ^ ^-3 rotated as @s positioned ^ ^ ^4 unless entity @s[distance=..5] run scoreboard players set @s TargetID 0

# ホーミングする
	execute if predicate asset:valid_target_id positioned ^ ^ ^-80 facing entity @n[tag=_target,distance=..1000] eyes run rotate @s ~ ~
