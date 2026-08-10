# MP消費
	data modify storage api: in.Amount set value 10
	function api:player/stamina/consume

# クールタイム設定
	scoreboard players set @s Dodge.Duration 6
	scoreboard players set @s Dodge.CoolTime 12

# 移動する
	scoreboard players set #t_VelocityX _ 0
	scoreboard players set #t_VelocityZ _ 0

	execute if predicate lib:input/forward run scoreboard players add #t_VelocityZ _ 1
	execute if predicate lib:input/backward run scoreboard players remove #t_VelocityZ _ 1
	execute if predicate lib:input/right run scoreboard players remove #t_VelocityX _ 1
	execute if predicate lib:input/left run scoreboard players add #t_VelocityX _ 1

	execute if score #t_VelocityX _ matches 0 if score #t_VelocityZ _ matches 0 run scoreboard players add #t_VelocityZ _ 1

	execute store result storage player:temp Velocity.X int 1 run scoreboard players get #t_VelocityX _
	execute store result storage player:temp Velocity.Z int 1 run scoreboard players get #t_VelocityZ _

	function player:state/dodge/add_force.m with storage player:temp Velocity

	scoreboard players reset #t_VelocityX _
	scoreboard players reset #t_VelocityZ _
	data remove storage player:temp Velocity

# modifier
	attribute @s gravity modifier add player:dodge -1 add_multiplied_total
	attribute @s movement_speed modifier add player:dodge 0.3 add_multiplied_base

# 演出
	playsound entity.breeze.land player @s ~ ~ ~ 1 0.5 1
