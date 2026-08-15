#> api:damage/core/give_damage.m
#

$damage @s $(Damage) lib:generic by @n[tag=_owner,distance=..1000]
$execute at @s anchored eyes positioned ^ ^ ^ positioned ~ ~0.2 ~ run function api:object/summon_with.m {ID:"damage_indicator",Field:{Damage:"$(Damage)",Element:$(Element)}}

# 演出
	execute at @p[tag=_owner,distance=..1000] facing entity @s feet positioned ^ ^ ^3 run playsound entity.player.attack.strong player @p[tag=_owner,distance=..1000] ~ ~ ~ 1 1 1
