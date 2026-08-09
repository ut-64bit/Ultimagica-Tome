#> asset:object/proj.thunder_strike/tick/state_idle/
#

function asset:object/super.tick

execute if score @s General.Tick matches 1 run particle firework ~ ~0.1 ~ 0 0 0 0.2 10 normal
execute if score @s General.Tick matches 2 run function asset:object/proj.thunder_strike/tick/state_idle/give_damage
