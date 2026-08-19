#> world_manager:game/player/unready

function world_manager:game/player/clear_ready
tellraw @s [{"text":"[Game] ","color":"gold"},{"text":"準備を解除しました。","color":"yellow"}]
