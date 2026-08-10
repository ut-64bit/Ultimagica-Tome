#> world:game/player/observe
#
# 途中参加者。Game.Observer は一時的なスペクテイター魔法と区別する。

tag @s add Game.Observer
tag @s remove Game.Ready
scoreboard players set @s Game.Ready 0
gamemode spectator @s
tp @s @r[tag=Game.Active]

tellraw @s [{"text":"[Game] ","color":"gold"},{"text":"進行中の試合には参加できないため、観戦者になりました。","color":"yellow"}]
