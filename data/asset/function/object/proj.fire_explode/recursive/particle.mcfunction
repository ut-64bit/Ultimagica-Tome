#> asset:object/proj.fire_expldoe/recursive/particle
#

execute if score @s MoveCount matches 10 run function asset:object/proj.fire_explode/recursive/shape_1
execute if score @s MoveCount matches 20 run function asset:object/proj.fire_explode/recursive/shape_2
execute if score @s MoveCount matches 30 run function asset:object/proj.fire_explode/recursive/shape_3
execute if score @s MoveCount matches 40 run function asset:object/proj.fire_explode/recursive/shape_4
execute if score @s MoveCount matches 50 run function asset:object/proj.fire_explode/recursive/shape_5

execute if score @s MoveCount matches 10 run playsound item.firecharge.use player @a ~ ~ ~ 1 0.8
execute if score @s MoveCount matches 15 run playsound item.firecharge.use player @a ~ ~ ~ 1 1.2
execute if score @s MoveCount matches 20 run playsound item.firecharge.use player @a ~ ~ ~ 1 1.4
execute if score @s MoveCount matches 25 run playsound item.firecharge.use player @a ~ ~ ~ 1 1.6
execute if score @s MoveCount matches 30 run playsound item.firecharge.use player @a ~ ~ ~ 1 1.8
execute if score @s MoveCount matches 40 run playsound item.firecharge.use player @a ~ ~ ~ 1 2
execute if score @s MoveCount matches 50 run playsound item.firecharge.use player @a ~ ~ ~ 1 0.4
