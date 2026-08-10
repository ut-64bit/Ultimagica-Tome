# MP消費
	data modify storage api: in.Amount set value 10
	function api:player/stamina/consume

# クールタイム設定
	scoreboard players set @s Dodge.Duration 10
	scoreboard players set @s Dodge.CoolTime 20

# 移動する
	function lib:motion/reset

	scoreboard players set $strength hb.Motion 10000
	function #p_motion:looking

	data modify storage api: in.FieldOverride set value { Power:0.7, Duration:10 }
	function api:object/summon.m {ID:"force_source"}

# modifier
	attribute @s movement_speed modifier add player:dodge 0.3 add_multiplied_base

# 演出
	playsound item.trident.riptide_2 player @a ~ ~ ~ 0.8 0.8
	playsound entity.player.splash.high_speed player @a ~ ~ ~ 0.7 0.65
	particle bubble ^ ^ ^ 0.3 0.3 0.3 0 10
