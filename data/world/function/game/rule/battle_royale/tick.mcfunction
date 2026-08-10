#> world:game/rule/battle_royale/tick

execute store result score #ActiveCount _ if entity @a[tag=Game.Active]
execute if score #ActiveCount _ matches 2.. run return 0

execute if score #ActiveCount _ matches 1 run tellraw @a [{"text":"[Game] 勝者: ","color":"gold"},{"selector":"@a[tag=Game.Active,limit=1]","color":"green","bold":true}]
execute if score #ActiveCount _ matches 0 run tellraw @a [{"text":"[Game] ","color":"gold"},{"text":"生存者なし","color":"gray"}]

return run function world_manager:game/state/ending/enter
