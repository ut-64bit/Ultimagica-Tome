#> asset:attack/wind_arrow/charge_start/
#

attribute @s movement_speed modifier add player:cooltime -0.2 add_multiplied_base
attribute @s movement_speed modifier add player:charge -0.5 add_multiplied_base

item modify entity @s weapon.mainhand {function:"set_custom_model_data",strings:{values:["wind_bow"],mode:"replace_section",offset:0}}

# 演出
	function asset:attack/_common/vfx/cast_start/wind
	playsound ut_magic:bow_draw player @a ~ ~ ~ 2 1
