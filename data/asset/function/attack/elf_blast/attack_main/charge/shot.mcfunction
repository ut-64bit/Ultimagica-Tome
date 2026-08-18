#> asset:attack/elf_blast/attack_main/charge/shot
#

# 発射する
	function api:clear_in
	execute anchored eyes positioned ^-0.2 ^-0.2 ^0.5 run function api:object/summon.m {ID:"proj.elf_blast"}

# 演出
	playsound item.firecharge.use player @a ~ ~ ~ 0.9 1.3
