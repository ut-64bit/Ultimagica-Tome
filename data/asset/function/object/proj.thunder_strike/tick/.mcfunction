#> asset:object/proj.thunder_strike/tick/
#
# 毎tick呼び出されるメソッド
#

function asset:object/super.tick

# 発射者を取得する
	function asset:object/interface.attackable/get_owner

execute if score @s General.Tick matches 1 run particle firework ~ ~0.1 ~ 0 0 0 0.2 10 normal
execute if score @s General.Tick matches 1 run function asset:object/proj.thunder_strike/tick/give_damage


# あとしまつ
	execute as @n[tag=_owner,distance=..1000] run tag @s remove _owner
