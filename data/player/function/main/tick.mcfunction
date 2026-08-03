#> player:main/tick
#

# 装備しているアイテムの処理
	function player:item/tick

	function player:action/tick

	function player:weapon/tick


# 攻撃の処理
	execute if data storage player:context this.Attack run function player:attack/tick

# function player_manager:api/fsm/tick

# CT
	execute unless data storage player:context this.Attack if score @s HardCoolTime matches 1.. run scoreboard players remove @s HardCoolTime 1
	execute unless data storage player:context this.Attack if score @s SoftCoolTime matches 1.. run scoreboard players remove @s SoftCoolTime 1
	execute unless data storage player:context this.Attack unless score @s SoftCoolTime matches 1.. run attribute @s movement_speed modifier remove player:cooltime

# コンボ
	execute unless data storage player:context this.Attack if score @s ComboTimer matches 1.. run scoreboard players remove @s ComboTimer 1
	execute unless data storage player:context this.Attack if score @s ComboTimer matches 0 run scoreboard players set @s ComboCount 0

# 先行入力
	execute if score @s AttackTimer matches 1.. run scoreboard players remove @s AttackTimer 1


# スタミナの処理
	function player:stamina/tick

# UIの処理
	function player:actionbar/tick
