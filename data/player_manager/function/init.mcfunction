#> player_manager:init
#

# クラス・スキル用能力値の不足分を初期化する。
	function player_manager:stats/ensure

# スタミナ初期化
	scoreboard players set @s MaxStamina 100000
	scoreboard players set @s StaminaRecoverDelay 20
	scoreboard players set @s StaminaRecoverSpeed 1000

# ガード力初期化
	scoreboard players set @s MaxGuardPower 15000
	scoreboard players set @s GuardPowerRecoverDelay 60
	scoreboard players set @s GuardPowerRecoverSpeed 200

# クラス・スキルの補正を反映してからMPとガード力を全回復する。
	function player_manager:stats/rebuild
	scoreboard players operation @s Stamina = @s MaxStamina
	scoreboard players operation @s GuardPower = @s MaxGuardPower

# HP初期化
	attribute @s max_health base set 40
	effect give @s instant_health 1 10

# attribute初期化
	attribute @s attack_damage base set 0
	attribute @s sneaking_speed base set 1
	attribute @s jump_strength base set 0
	attribute @s step_height base set 1

# 永続バフ付与
	effect give @s saturation infinite 0 true

# 攻撃初期化
	data modify storage player:context this.StateMachine set value {current:"idle",time:0,state_data:{}}
	data remove storage player:context this.ActionBlock
	attribute @s movement_speed modifier remove player:attack
	attribute @s movement_speed modifier remove player:charge
	attribute @s movement_speed modifier remove player:cooltime
	attribute @s movement_speed modifier remove player:hold
	attribute @s movement_speed modifier remove player:stagger
	function player_manager:attack/combo/clear
	function player_manager:invincibility/clear
