#> asset:attack/holy_spire.0_pre/standby_start/
#

execute as @e[tag=Object.proj.holy_spire,distance=..16] if score @s OwnerID = @n[tag=_this,distance=..0.01] EntityID run function asset:object/proj.holy_spire/cancel
