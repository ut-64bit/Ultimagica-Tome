#> asset:object/proj.holy_spire_wave/hit_entity/give_damage
#

function api:damage/give_damage

# カチ上げる
	scoreboard players set $x hb.Motion 0
	scoreboard players set $y hb.Motion 7000
	scoreboard players set $z hb.Motion 0
	function #p_motion:xyz

# 怯む
	function oh_my_dat:please
	data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.AttackState set value "standby"
	data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.NextAttack
	scoreboard players set @s ComboTimer 0
	scoreboard players set @s HardCoolTime 2
	scoreboard players set @s SoftCoolTime 6
