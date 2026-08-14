#> asset:attack/water_ray/attack_main/
#

# 演出
	execute if score @s AttackTime matches 1 run playsound block.bubble_column.upwards_inside player @a ~ ~ ~ 1 1.7
	execute if score @s AttackTime matches 1 run playsound entity.guardian.attack player @a ~ ~ ~ 1 2

# 長押してたら繰り返す
	execute if score @s AttackTime matches 4 if entity @s[tag=UsingItem] run function asset:attack/water_ray/attack_main/repeat

# 発射終了
	execute if score @s AttackTime matches 5 as @e[tag=Object.atk.water_ray_base,distance=..1000] if score @s OwnerID = @n[tag=_this,distance=..0.01] EntityID run function api:common/auto_kill

# 攻撃終了
	execute if score @s AttackTime matches 12.. run function player_manager:fsm/request {state:"idle"}
