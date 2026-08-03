#> api:damage/core/give_damage.m
#

$damage @s $(Damage) lib:generic by @n[tag=_owner,distance=..1000]

# 演出
	execute at @p[tag=_owner,distance=..1000] facing entity @s feet positioned ^ ^ ^3 run playsound entity.player.attack.strong player @p[tag=_owner,distance=..1000] ~ ~ ~ 1 1 1
