#> asset:object/effect.holy_bind/destroy/
#
# 破棄する直前に呼ばれる処理
#

function asset:object/interface.attackable/get_target

attribute @n[tag=_target,distance=..1000] movement_speed modifier remove asset:effect.holy_bind

# 演出
	playsound block.glass.break neutral @a ~ ~ ~ 1 1.3
	particle firework ~ ~1 ~ 0.0 0.0 0.0 0.1 5 normal

tag @n[tag=_target,distance=..1000] remove _target
