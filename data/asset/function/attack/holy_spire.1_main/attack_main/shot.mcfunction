#> asset:attack/holy_spire.1_main/attack_main/shot
#

# 発射する
	execute at @s as @e[tag=Object.proj.holy_spire,distance=..16] if score @s OwnerID = @n[tag=_this,distance=..0.01] EntityID run function asset:object/proj.holy_spire/shot

# 演出
	playsound item.trident.throw player @a ~ ~ ~ 1 1
