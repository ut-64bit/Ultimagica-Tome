#> world:game/state/playing/enter

data modify storage world:game state set value "playing"
scoreboard players set #Game Game.Timer 0

# カウントダウン終了時に参加者を初期化する。
execute as @a[tag=Game.Participant] at @s run function world:game/player/prepare

# 準備完了の発光は試合開始時に解除する。
effect clear @a[tag=Game.Ready] glowing
team leave @a[tag=Game.Ready]
tag @a remove Game.Ready

scoreboard players set @a[tag=Game.Active] Game.Deaths 0

scoreboard players set @a[tag=Game.Active] InvincibleTime 0
tag @a[tag=Game.Active] remove Player.Invincible
gamemode adventure @a[tag=Game.Active]
gamerule pvp true

function world:game/dispatch/stage/start.m with storage world:game runtime
function world:game/dispatch/rule/start.m with storage world:game runtime

# カウントダウン終了時に、非参加者を観戦者化して生存者の位置へ移動する。
execute as @a[tag=!Game.Participant] run function world:game/player/observe

title @a title {"text":"FIGHT!","color":"red","bold":true}

return 1
