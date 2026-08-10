#> player:actionbar/tick
#

# guard_power
	scoreboard players operation #t_GuardPower _ = @s GuardPower
	scoreboard players operation #t_GuardPower _ *= #c_20 const
	scoreboard players operation #t_GuardPower _ /= @s MaxGuardPower
	execute store result storage player:temp guard_power int 1 run scoreboard players add #t_GuardPower _ 1000
	function player:actionbar/guard_power.m with storage player:temp
	scoreboard players reset #t_GuardPower _

# UI表示
	title @s actionbar [{text:"",font:"ut_magic:gui"},\
		"\uF82F",\
		{text:"\uF829\uF824"},{nbt:"guard_power",storage:"player:temp",interpret:true},\
		"\uF82F",]

# あとしまつ
	data remove storage player:temp guard_power


# スタミナを表示する
	# 現在のスタミナを千分率で取得する
		scoreboard players operation #t_StaminaDisplay _ = @s Stamina
		scoreboard players operation #t_StaminaDisplay _ *= #c_1000 const
		scoreboard players operation #t_StaminaDisplay _ /= @s MaxStamina

	# 補間
		xp set @s 129 levels
		execute store result score #t_XPBarPoint _ run xp query @s points
		scoreboard players operation #t_XPBarPoint _ *= #c_1 const
		scoreboard players operation #t_StaminaDisplay _ *= #c_2 const
		scoreboard players operation #t_StaminaDisplay _ += #t_XPBarPoint _
		scoreboard players operation #t_StaminaDisplay _ /= #c_3 const

	# マクロで使うために形を整える
		execute store result storage player:temp Point int 1 run scoreboard players get #t_StaminaDisplay _
		execute store result storage player:temp Level int 1 run function api:player/stamina/get_current

	# スタミナをXPバーに表示する
		function player:actionbar/set_xp.m with storage player:temp

	# あとしまつ
		scoreboard players reset #t_StaminaDisplay _
		scoreboard players reset #t_XPBarPoint _
		data remove storage player:temp Point
		data remove storage player:temp Level
