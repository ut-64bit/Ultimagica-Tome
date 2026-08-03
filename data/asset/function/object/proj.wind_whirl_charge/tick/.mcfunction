#> asset:object/proj.wind_whirl_charge/tick/
#
# Tick処理
#

function asset:object/interface.attackable/get_owner

scoreboard players add @s General.Tick 1

scoreboard players operation #t_Interval _ = @s General.Tick
scoreboard players remove #t_Interval _ 1
scoreboard players operation #t_Interval _ %= #c_4 const

# 定期的にダメージを与える
	execute if score #t_Interval _ matches 0 run function asset:object/proj.wind_whirl_charge/tick/create_attack_data
# エンティティの衝突
	function asset:object/call.m {method:"detect_hit_entity"}
	execute if data storage asset:context {IsHitEntity:true} run function asset:object/call.m {method:"hit_entity"}
	data remove storage asset:context IsHitEntity

# 演出
	particle enchant ^ ^ ^ 1 1 1 0 3 normal
	particle dust{color:16777215,scale:1.6} ^ ^ ^ 0.4 0.9 0.4 0 3 force
	particle dust{color:10289072,scale:1.8} ^ ^ ^ 0.7 0.9 0.7 0 3 force
	execute if score #t_Interval _ matches 0 run playsound entity.breeze.slide neutral @a ~ ~ ~ 0.6 1
	execute if score @s General.Tick matches 2 run data merge entity @s {transformation:{scale:[2.3,4,2.3],left_rotation:{axis:[0,1,0],angle:4.186}},interpolation_duration:3,start_interpolation:0}
	execute if score @s General.Tick matches 4.. run function asset:object/proj.wind_whirl_charge/tick/rotate

scoreboard players reset #t_Interval _

# 残り時間が0になったらオブジェクトを削除する
	execute store result storage asset:context this.Duration int 0.9999999999 run data get storage asset:context this.Duration
	execute if data storage asset:context this{Duration:0} run function api:common/auto_kill

tag @n[tag=_owner,distance=..1000] remove _owner
