#> world:game/state/countdown/tick

# カウントダウン中の参加者を保護する。
execute as @a[tag=Game.Active] run function player_manager:invincibility/set {duration:2}

execute store result score #ActiveCount _ if entity @a[tag=Game.Active]
execute store result score #MinimumPlayers _ run data get storage world:game runtime.min_players
execute if score #ActiveCount _ < #MinimumPlayers _ run tellraw @a [{"text":"[Game] ","color":"gold"},{"text":"参加者が不足したため開始を中止しました。","color":"red"}]
execute if score #ActiveCount _ < #MinimumPlayers _ run return run function world:game/reset

execute if score #Game Game.Timer matches 61 run title @a clear
execute if score #Game Game.Timer matches 60 run title @a title {"text":"3","color":"yellow"}
execute if score #Game Game.Timer matches 60 as @a at @s run playsound block.note_block.bit player @s ~ ~ ~ 1 1.0 1
execute if score #Game Game.Timer matches 40 run title @a title {"text":"2","color":"gold"}
execute if score #Game Game.Timer matches 40 as @a at @s run playsound block.note_block.bit player @s ~ ~ ~ 1 1.2 1
execute if score #Game Game.Timer matches 20 run title @a title {"text":"1","color":"red"}
execute if score #Game Game.Timer matches 20 as @a at @s run playsound block.note_block.bit player @s ~ ~ ~ 1 1.4 1
execute if score #Game Game.Timer matches 1.. run scoreboard players remove #Game Game.Timer 1

execute if score #Game Game.Timer matches 0 run return run function world:game/state/playing/enter
