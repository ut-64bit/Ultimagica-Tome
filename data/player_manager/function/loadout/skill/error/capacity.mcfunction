#> player_manager:loadout/skill/error/capacity

tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"スキルコストが上限を超えます。","color":"red"},{"text":" (","color":"gray"},{"score":{"name":"@s","objective":"SkillCost"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"SkillCapacity"},"color":"yellow"},{"text":")","color":"gray"}]
playsound block.note_block.bass ui @s ~ ~ ~ 1 0.7
return 0
