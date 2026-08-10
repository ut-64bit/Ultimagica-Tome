#> player:menu/click/0/menu/lobby
# 準備完了 / 取り消し

function world_manager:game/player/toggle_ready

execute if entity @s[tag= Game.Ready] run playsound block.note_block.bell ui @s ~ ~ ~ 1 1
execute if entity @s[tag=!Game.Ready] run playsound ui.button.click ui @s ~ ~ ~ 1 1
