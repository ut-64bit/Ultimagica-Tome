#> player:menu/click/1/menu/lobby
# 観戦準備完了 / 取り消し

function world_manager:game/player/toggle_observer_ready

execute if entity @s[tag=Game.ObserverReady] run playsound block.note_block.bell ui @s ~ ~ ~ 1 1
execute if entity @s[tag=!Game.ObserverReady] run playsound ui.button.click ui @s ~ ~ ~ 1 1
