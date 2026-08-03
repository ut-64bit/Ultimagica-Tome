#> asset:object/proj.thunder_spark/tick/
#
# 毎tick呼び出されるメソッド
#

# 発射者を取得する
	execute if predicate asset:valid_owner_id run function asset:object/abstract.projectile/tick/get_owner
	# execute if predicate asset:valid_target_id run function asset:object/abstract.projectile/tick/get_target

# 拡散する
	execute unless data storage asset:context this{NoSpread:true} run function asset:object/proj.thunder_spark/tick/spread

# 再帰開始！
	execute at @s run function asset:object/abstract.projectile/tick/start_rec

# 拡散を抑える
	execute unless data storage asset:context this{NoSpread:true} positioned ^ ^ ^30 rotated as @s positioned ^ ^ ^-3 facing entity @s feet facing ^ ^ ^-1 run rotate @s ~ ~

# 演出
	particle crit ~ ~ ~ 0 0 0 0.1 1 normal
	particle firework ~ ~ ~ 0 0 0 0.1 1 normal
	playsound entity.firework_rocket.blast neutral @a ~ ~ ~ 0.3 1

# あとしまつ
	execute as @n[tag=_owner,distance=..1000] run tag @s remove _owner
	# execute as @n[tag=_target,distance=..1000] run tag @s remove _target
