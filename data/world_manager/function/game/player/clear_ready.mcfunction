#> world_manager:game/player/clear_ready
#
# 参加準備と観戦準備を解除する。通知は呼び出し側で行う。

tag @s remove Game.Ready
tag @s remove Game.ObserverReady
team leave @s
effect clear @s glowing
