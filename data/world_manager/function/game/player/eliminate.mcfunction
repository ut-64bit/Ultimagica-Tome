#> world_manager:game/player/eliminate

tag @s remove Game.Active
tag @s remove Game.TempSpectator
tag @s add Game.Eliminated
scoreboard players set @s Game.Deaths 0
gamemode spectator @s
function world_manager:game/player/teleport_to_last_death

tellraw @a [{"text":"[Game] ","color":"gold"},{"selector":"@s","color":"red"},{"text":" が脱落しました。","color":"gray"}]
