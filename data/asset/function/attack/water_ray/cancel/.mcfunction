#> asset:attack/water_ray/cancel/

execute as @e[tag=Object.atk.water_ray_base,distance=..1000] if score @s OwnerID = @n[tag=_this,distance=..0.01] EntityID run function api:common/auto_kill
