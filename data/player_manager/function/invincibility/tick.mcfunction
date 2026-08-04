#> player_manager:invincibility/tick

execute if entity @s[tag=Player.Invincible] if score @s InvincibleTime matches 1.. run function player_manager:invincibility/ground_particle
execute if entity @s[tag=Player.Invincible] if score @s InvincibleTime matches 1.. run scoreboard players remove @s InvincibleTime 1
execute if entity @s[tag=Player.Invincible] unless score @s InvincibleTime matches 1.. run tag @s remove Player.Invincible
