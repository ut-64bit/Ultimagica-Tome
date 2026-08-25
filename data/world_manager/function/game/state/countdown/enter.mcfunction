#> world_manager:game/state/countdown/enter

# 選択中のルールとステージを、この試合用に固定する。
data modify storage world_manager:game runtime set from storage world_manager:game config
data remove storage world_manager:game auto_start_pending

tag @a remove Game.Participant
tag @a remove Game.Active
tag @a remove Game.Eliminated
tag @a remove Game.Observer
tag @a remove Game.TempSpectator
tag @a remove Game.Waiting

tag @a[tag=Game.Ready] add Game.Participant
tag @a[tag=Game.Ready] add Game.Active
# 開始時点で未準備のプレイヤーは、この試合中もロビーに残す。
tag @a[tag=!Game.Ready,tag=!Game.ObserverReady] add Game.Waiting

data modify storage world_manager:game state set value "countdown"
execute store result score #Game Game.Timer run data get storage world_manager:game runtime.countdown_ticks

gamerule pvp false
function world_manager:game/dispatch/stage/prepare.m with storage world_manager:game runtime

title @a times 0 40 10
title @a title {"text":"BATTLE ROYALE","color":"gold","bold":true}
title @a subtitle {"text":"戦闘開始までお待ちください","color":"yellow"}

return 1
