#> player_manager:invincibility/set
# @input duration: positive duration in ticks

$scoreboard players set #duration InvincibleTime $(duration)
execute unless score #duration InvincibleTime matches 1.. run return fail
execute unless score @s InvincibleTime matches 1.. run scoreboard players set @s InvincibleTime 0
execute if score @s InvincibleTime < #duration InvincibleTime run scoreboard players operation @s InvincibleTime = #duration InvincibleTime
tag @s add Player.Invincible

return 1
