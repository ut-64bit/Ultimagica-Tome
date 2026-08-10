#> world:game/load
#
# storage world:game state
#   "lobby" | "countdown" | "playing" | "ending"

scoreboard objectives add Game.Timer dummy
scoreboard objectives add Game.Deaths deathCount
scoreboard objectives add Game.Ready trigger

team add Game.Ready
team modify Game.Ready displayName {"text":"Ready Players","color":"green"}
team modify Game.Ready color green
team modify Game.Ready prefix {"text":"[READY] ","color":"green"}

execute unless data storage world:game state run data modify storage world:game state set value "lobby"

execute unless score #Game Game.Timer matches 0.. run scoreboard players set #Game Game.Timer 0

# ロビーで変更できる設定。開始時に runtime へ固定される。
execute unless data storage world:game config.rule run data modify storage world:game config.rule set value "battle_royale"
execute unless data storage world:game config.stage run data modify storage world:game config.stage set value "none"
execute unless data storage world:game config.min_players run data modify storage world:game config.min_players set value 2
execute unless data storage world:game config.countdown_ticks run data modify storage world:game config.countdown_ticks set value 100
execute unless data storage world:game config.end_ticks run data modify storage world:game config.end_ticks set value 100

gamerule immediate_respawn true
execute if data storage world:game {state:"lobby"} run gamerule pvp false
execute if data storage world:game {state:"countdown"} run gamerule pvp false
execute if data storage world:game {state:"playing"} run gamerule pvp true
execute if data storage world:game {state:"ending"} run gamerule pvp false
