#> world_manager:game/player/eliminate
# 脱落時の処理

tag @s remove Game.Active
tag @s remove Game.TempSpectator
tag @s add Game.Eliminated

gamemode spectator @s
function world_manager:game/player/teleport_to_last_death

tellraw @a [{"text":"[Game] ","color":"gold"},{"selector":"@s","color":"red"},{"text":" が脱落しました。","color":"gray"}]
