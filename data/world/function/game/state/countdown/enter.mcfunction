#> world:game/state/countdown/enter

# 選択中のルールとステージを、この試合用に固定する。
data modify storage world:game runtime set from storage world:game config

tag @a remove Game.Participant
tag @a remove Game.Active
tag @a remove Game.Eliminated
tag @a remove Game.Observer
tag @a remove Game.TempSpectator

tag @a[tag=Game.Ready] add Game.Participant
tag @a[tag=Game.Ready] add Game.Active

data modify storage world:game state set value "countdown"
execute store result score #Game Game.Timer run data get storage world:game runtime.countdown_ticks

gamerule pvp false
function world:game/dispatch/stage/prepare.m with storage world:game runtime

title @a times 0 40 10
title @a title {"text":"BATTLE ROYALE","color":"gold","bold":true}
title @a subtitle {"text":"戦闘開始までお待ちください","color":"yellow"}

return 1
