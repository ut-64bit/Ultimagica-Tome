#> lib:entity_id/core/allocate_id
#
# 新しいEntityIDを割り当てる
#

scoreboard players add $EntityID Global 1
execute if score $EntityID Global matches 0 run scoreboard players set $EntityID Global 1
scoreboard players operation @s EntityID = $EntityID Global
