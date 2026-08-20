#> player_manager:loadout/skill/remove.m
# macro: {slot:int}
#
# 指定位置の選択スキルを解除する。正数は先頭、負数は末尾から数える。

function player_manager:loadout/ensure

$scoreboard players set #LoadoutSkillSlot _ $(slot)
execute store result score #LoadoutSkillCount _ run data get storage player:context this.Loadout.Skills

# 負数を末尾基準のスロット番号へ変換する（-1が最後尾）。
scoreboard players set #LoadoutSkillNegativeSlot _ 0
execute if score #LoadoutSkillSlot _ matches ..-1 run scoreboard players set #LoadoutSkillNegativeSlot _ 1
execute if score #LoadoutSkillNegativeSlot _ matches 1 run scoreboard players operation #LoadoutSkillSlot _ += #LoadoutSkillCount _
execute if score #LoadoutSkillNegativeSlot _ matches 1 run scoreboard players add #LoadoutSkillSlot _ 1

execute unless score #LoadoutSkillSlot _ matches 1.. run return run function player_manager:loadout/skill/error/slot
execute if score #LoadoutSkillSlot _ > #LoadoutSkillCount _ run return run function player_manager:loadout/skill/error/slot

data modify storage player_manager:loadout temp.skill.remove set value {slot:0,index:0}
execute store result storage player_manager:loadout temp.skill.remove.slot int 1 run scoreboard players get #LoadoutSkillSlot _
scoreboard players remove #LoadoutSkillSlot _ 1
execute store result storage player_manager:loadout temp.skill.remove.index int 1 run scoreboard players get #LoadoutSkillSlot _
function player_manager:loadout/skill/remove_at.m with storage player_manager:loadout temp.skill.remove

data modify storage player_manager:loadout temp.skill.remove.argument set value {}
data modify storage player_manager:loadout temp.skill.remove.argument.skill set from storage player_manager:loadout temp.skill.remove.current.id
execute store result score #LoadoutSkillRemoveResult _ run function player_manager:loadout/skill/deselect.m with storage player_manager:loadout temp.skill.remove.argument

data remove storage player_manager:loadout temp.skill.remove
return run scoreboard players get #LoadoutSkillRemoveResult _
