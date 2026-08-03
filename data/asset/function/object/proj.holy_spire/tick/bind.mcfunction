#> asset:object/proj.holy_spire/tick/bind
#

execute unless entity @n[tag=_target,distance=..3] run scoreboard players set @s TargetID 0
execute unless score @s TargetID matches 0 run ride @n[tag=_target,distance=..1000] mount @s
