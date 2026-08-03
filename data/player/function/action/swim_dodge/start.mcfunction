#> player:action/swim_dodge/start
#

# MP消費
	data modify storage api: in.Amount set value 10
	function api:stamina/consume

# クールタイム設定
	scoreboard players set @s Dodge.Duration 12
	scoreboard players set @s Dodge.CoolTime 24
	scoreboard players set @s HardCoolTime 20

# フラグを立てる
	tag @s add Dodge

# 移動する
	scoreboard players set $strength hb.Motion 10000
	function p_motion:main/looking
	data modify storage api: in.FieldOverride set value { Power:0.7, Duration:12 }
	function api:object/summon.m {ID:"force_source"}

# modifier
	attribute @s movement_speed modifier add player:dodge 0.3 add_multiplied_base

# ガードを中断する
	function player:action/guard_cancel

# 演出
	playsound item.trident.riptide_2 player @a ~ ~ ~ 0.8 0.8
	playsound entity.player.splash.high_speed player @a ~ ~ ~ 0.7 0.65
	particle bubble ^0 ^-0.7 ^ 0.05 0.05 0.05 0 2
	particle bubble ^0.2163 ^-0.6657 ^ 0.05 0.05 0.05 0 2
	particle bubble ^0.4114 ^-0.5663 ^ 0.05 0.05 0.05 0 2
	particle bubble ^0.5663 ^-0.4114 ^ 0.05 0.05 0.05 0 2
	particle bubble ^0.6657 ^-0.2163 ^ 0.05 0.05 0.05 0 2
	particle bubble ^0.7 ^0 ^ 0.05 0.05 0.05 0 2
	particle bubble ^0.6657 ^0.2163 ^ 0.05 0.05 0.05 0 2
	particle bubble ^0.5663 ^0.4114 ^ 0.05 0.05 0.05 0 2
	particle bubble ^0.4114 ^0.5663 ^ 0.05 0.05 0.05 0 2
	particle bubble ^0.2163 ^0.6657 ^ 0.05 0.05 0.05 0 2
	particle bubble ^0 ^0.7 ^ 0.05 0.05 0.05 0 2
	particle bubble ^-0.2163 ^0.6657 ^ 0.05 0.05 0.05 0 2
	particle bubble ^-0.4114 ^0.5663 ^ 0.05 0.05 0.05 0 2
	particle bubble ^-0.5663 ^0.4114 ^ 0.05 0.05 0.05 0 2
	particle bubble ^-0.6657 ^0.2163 ^ 0.05 0.05 0.05 0 2
	particle bubble ^-0.7 ^0 ^ 0.05 0.05 0.05 0 2
	particle bubble ^-0.6657 ^-0.2163 ^ 0.05 0.05 0.05 0 2
	particle bubble ^-0.5663 ^-0.4114 ^ 0.05 0.05 0.05 0 2
	particle bubble ^-0.4114 ^-0.5663 ^ 0.05 0.05 0.05 0 2
	particle bubble ^-0.2163 ^-0.6657 ^ 0.05 0.05 0.05 0 2
