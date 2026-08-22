#> asset:object/object.holy_judgement/init/
#
# 初期化時に呼び出されるメソッド
#

function asset:object/super.init

function asset:object/interface.attackable/get_target

# tp補間
	data modify entity @s teleport_duration set value 1
# 演出
	playsound block.bell.use player @a ~ ~ ~ 1 0

# ターゲットの場所に移動する
	execute at @n[tag=_target,distance=..1000] run tp @s ~ ~ ~ ~ 90

tag @n[tag=_target,distance=..1000] remove _target
