#> asset:object/object.thunder_spire_spark/tick/
#
# 毎tick呼び出されるメソッド
#

function asset:object/super.tick

# 発射者を取得する
	function asset:object/interface.attackable/get_owner

execute if score @s General.Tick matches 1 run data merge entity @s { transformation:{ scale:[4,4,4] }, interpolation_duration:14, start_interpolation:0 }
execute if score @s General.Tick matches 1 run function asset:object/proj.thunder_spire_explosion/tick/explode_first
execute if score @s General.Tick matches 4 run function asset:object/proj.thunder_spire_explosion/tick/explode
execute if score @s General.Tick matches 7 run function asset:object/proj.thunder_spire_explosion/tick/explode
execute if score @s General.Tick matches 10 run function asset:object/proj.thunder_spire_explosion/tick/explode

# 演出
	particle firework ~ ~ ~ 0 0 0 0.3 3 normal

# あとしまつ
	execute as @n[tag=_owner,distance=..1000] run tag @s remove _owner
