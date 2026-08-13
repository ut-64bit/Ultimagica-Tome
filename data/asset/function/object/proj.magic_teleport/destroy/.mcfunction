#> asset:object/proj.magic_teleport/destroy/
#
# 破棄する直前に呼ばれる処理
#

function asset:object/abstract.projectile/tick/get_owner

tp @n[tag=_owner,distance=..1000] ~ ~ ~
ride @n[tag=_owner,distance=..1000] mount @s
ride @n[tag=_owner,distance=..1000] dismount
# execute as @n[tag=_owner,distance=..1000] run function lib:motion/reset

playsound entity.player.teleport player @a ~ ~ ~ 1 1
particle explosion ~ ~ ~ 0.0 0.0 0.0 0 1 force @a[tag=!_owner]
particle portal ~ ~ ~ 0.0 0 0.0 1 30 normal

tag @n[tag=_owner,distance=..1000] remove _owner