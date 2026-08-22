#> asset:object/proj.fire_beam_base/tick/
#
# Tick処理
#

function asset:object/interface.attackable/get_owner

scoreboard players add @s General.Tick 1

# ゆっくり回るよ
	execute if score @s General.Tick matches ..20 positioned ^ ^ ^-40 rotated as @n[tag=_owner,distance=..1000] positioned ^ ^ ^-10 facing entity @s feet run rotate @s ~ ~
	execute if score @s General.Tick matches ..20 at @s as @n[tag=_owner,distance=..1000] positioned as @s anchored eyes positioned ^ ^ ^2 run tp @n[tag=_this,distance=..1000] ~ ~ ~

# 魔法陣展開！
	execute if score @s General.Tick matches 2 run data merge entity @s {transformation:{scale:[1.3f,1.3f,1.3f],left_rotation:{axis:[0,0,1],angle:1.5}},interpolation_duration:4,start_interpolation:0}
	execute if score @s General.Tick matches 2 run particle enchant ~ ~ ~ 0.3 0.3 0.3 0 20 normal @a
	execute if score @s General.Tick matches 2 run playsound block.enchantment_table.use neutral @a ~ ~ ~ 1.5 0.85
	execute if score @s General.Tick matches 2 run playsound entity.blaze.hurt neutral @a ~ ~ ~ 1.5 0.7

# 発射ァ！
	execute if score @s General.Tick matches 8 run function asset:object/proj.fire_beam_base/tick/shot/
	execute if score @s General.Tick matches 12 run function asset:object/proj.fire_beam_base/tick/shot/
	execute if score @s General.Tick matches 16 run function asset:object/proj.fire_beam_base/tick/shot/

# 魔法陣消滅！
	execute if score @s General.Tick matches 30 run data merge entity @s {transformation:{scale:[0,0,0],left_rotation:{axis:[0,0,1],angle:3}},interpolation_duration:5,start_interpolation:0}

# 削除する
	execute if score @s General.Tick matches 36.. run function api:common/auto_kill

execute as @n[tag=_owner,distance=..1000] run tag @s remove _owner
