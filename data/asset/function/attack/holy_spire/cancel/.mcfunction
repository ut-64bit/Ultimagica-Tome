#> asset:attack/holy_spire/cancel/
#

# 待機中の槍を片付ける
execute as @e[tag=Object.proj.holy_spire,distance=..16] if score @s OwnerID = @n[tag=_this,distance=..0.01] EntityID run function asset:object/proj.holy_spire/cancel
