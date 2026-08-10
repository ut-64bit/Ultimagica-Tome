#> world_manager:game/player/unready

tag @s remove Game.Ready
team leave @s
effect clear @s glowing
tellraw @s [{"text":"[Game] ","color":"gold"},{"text":"準備を解除しました。","color":"yellow"}]
