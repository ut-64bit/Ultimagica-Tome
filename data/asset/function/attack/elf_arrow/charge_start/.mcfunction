#> asset:attack/elf_arrow/charge_start/
#

attribute @s movement_speed modifier add player:cooltime -0.2 add_multiplied_base
attribute @s movement_speed modifier add player:charge -0.5 add_multiplied_base

# 演出
	execute unless items entity @s weapon.mainhand *[custom_data~{Field:{state:"active"}}] run function asset:attack/_common/vfx/cast_start/elf
	playsound ut_magic:bow_draw player @a ~ ~ ~ 0.5 1
	item modify entity @s weapon.mainhand [{function:"set_custom_model_data",strings:{values:["elf_bow"],mode:"replace_section",offset:0}},{function:"set_custom_data",tag:{Field:{state:"active"}}}]
