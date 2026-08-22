#> asset:object/proj.holy_judgement_light/recursive/
#
# 毎ステップの移動時に呼び出されるメソッド
#

# 演出

# [ImportKey]: NobwRALgngDgpmAXGGB7ANlA5qgdmAGjAFdiBLAEyTACYAjAQwDYAGAdgoFYBaAYwDMAnIO4AWOAEZ+3OqIkBmbgA46nFkrad58iTSWEwuBgFsEyQFiagJcjARvoACCQZgMATiYDOScL1TFcEJBJEvHB+cM6eYABuDOjEZuAAHkgsRFDJAL7pRK4UZMQeiIFgbhAu-ogpYHDo6GQwbmYSLJXOqKUQZpXezrhhSJxEAFbExjABRHRwAF5kfRVEZG4AojV1DUsAjsQxmADKTsFUiPwxDQtuAELTs86b2zVQ+wyHSCfoDZkAukA_3
# 多角形 1
scoreboard players add @s MoveCount 1

execute if score @s MoveCount matches 5.. if predicate lib:random_chance/50 positioned ^0 ^-1 ^ run function asset:object/proj.holy_judgement_light/recursive/particle
execute if score @s MoveCount matches 5.. if predicate lib:random_chance/50 positioned ^0.95106 ^-0.30902 ^ run function asset:object/proj.holy_judgement_light/recursive/particle
execute if score @s MoveCount matches 5.. if predicate lib:random_chance/50 positioned ^0.58779 ^0.80902 ^ run function asset:object/proj.holy_judgement_light/recursive/particle
execute if score @s MoveCount matches 5.. if predicate lib:random_chance/50 positioned ^-0.58779 ^0.80902 ^ run function asset:object/proj.holy_judgement_light/recursive/particle
execute if score @s MoveCount matches 5.. if predicate lib:random_chance/50 positioned ^-0.95106 ^-0.30902 ^ run function asset:object/proj.holy_judgement_light/recursive/particle
