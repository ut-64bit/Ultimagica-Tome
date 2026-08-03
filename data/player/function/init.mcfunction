#> player:init
#

# スタミナ初期化
	scoreboard players set @s MaxStamina 100000
	scoreboard players operation @s Stamina = @s MaxStamina
	scoreboard players set @s StaminaRecoverDelay 20
	scoreboard players set @s StaminaRecoverSpeed 1000

# ガード力初期化
	scoreboard players set @s MaxGuardPower 15000
	scoreboard players operation @s GuardPower = @s MaxGuardPower
	scoreboard players set @s GuardPowerRecoverDelay 60
	scoreboard players set @s GuardPowerRecoverSpeed 200

# HP初期化
	attribute @s max_health base set 40
	effect give @s instant_health 1 10

# attribute初期化
	attribute @s attack_damage base set 0
	attribute @s sneaking_speed base set 1
	attribute @s jump_strength base set 0
	attribute @s step_height base set 1
	attribute @s camera_distance base set 0

# 永続バフ付与
	effect give @s saturation infinite 0 true

# 攻撃初期化
	function oh_my_dat:please
	data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.AttackState set value "standby"
	# data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.OldAttackState set value "standby"
	data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player.Attack
	attribute @s movement_speed modifier remove player:attack
	attribute @s movement_speed modifier remove player:charge
	attribute @s movement_speed modifier remove player:cooltime
	attribute @s movement_speed modifier remove player:hold
