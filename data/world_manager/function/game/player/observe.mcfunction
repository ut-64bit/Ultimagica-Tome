#> world_manager:game/player/observe
#
# 途中参加者。Game.Observer は一時的なスペクテイター魔法と区別する。

tag @s add Game.Observer
tag @s remove Game.Ready
gamemode spectator @s
tp @s @r[tag=Game.Active]

execute if entity @s[tag=Game.ObserverReady] run tellraw @s [{"text":"[Game] ","color":"gold"},{"text":"観戦者として試合を開始しました。","color":"aqua"}]
execute unless entity @s[tag=Game.ObserverReady] run tellraw @s [{"text":"[Game] ","color":"gold"},{"text":"進行中の試合には参加できないため、観戦者になりました。","color":"yellow"}]
effect clear @s glowing
