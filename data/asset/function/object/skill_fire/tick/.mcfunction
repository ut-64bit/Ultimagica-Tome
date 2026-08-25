#> asset:object/skill_fire/tick/

function asset:object/interface.attackable/get_owner
scoreboard players add @s General.Tick 1

# 0.5秒ごとに、炎へ触れている敵へダメージを与える。
function lib:interval/ {Tick:10,Offset:1}
execute if score $Interval _ matches 0 run function asset:object/skill_fire/detect_hit_entity/
execute if score $Interval _ matches 0 if data storage asset:context {IsHitEntity:true} run function asset:object/skill_fire/hit_entity/
execute if score $Interval _ matches 0 run data remove storage asset:context IsHitEntity

# 演出
particle small_flame ~ ~0.15 ~ 0.4 0.05 0.4 0.025 3 force
execute if predicate lib:random_chance/20 run particle flame ~ ~0.1 ~ 0.3 0.1 0.3 0.02 2 normal
execute if predicate lib:random_chance/20 run particle smoke ~ ~0.2 ~ 0.25 0.1 0.25 0.01 1 normal
execute if predicate lib:random_chance/30 run particle dust_color_transition{from_color:16721408,to_color:4456448,scale:1} ~ ~0.1 ~ 0.5 0.05 0.5 0 2 normal @a[tag=!_owner]

# 3秒で消滅する。
execute if score @s General.Tick matches 60.. run function api:common/auto_kill

execute as @n[tag=_owner,distance=..1000] run tag @s remove _owner
