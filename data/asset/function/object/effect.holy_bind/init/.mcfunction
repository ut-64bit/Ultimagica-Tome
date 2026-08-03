#> asset:object/effect.holy_bind/init/
#
# 初期化処理
#

function asset:object/super.init

function asset:object/interface.attackable/get_target

# ターゲットがいないなら削除する
	execute unless entity @n[tag=_target,distance=..1000] run function api:common/auto_kill

# ターゲットの場所に移動する
	execute at @n[tag=_target,distance=..1000] run tp @s ~ ~ ~

# tp補間を有効にする
	data modify entity @s teleport_duration set value 1

# 既に付与されている"effect.holy_bind"をキルする
	scoreboard players operation #t_TargetID _ = @s TargetID
	execute as @e[tag=Object.effect.holy_bind,tag=!_init,distance=..1000] if score @s TargetID = #t_TargetID _ run function api:common/auto_kill
	scoreboard players reset #t_TargetID _

tag @n[tag=_target,distance=..1000] remove _target
