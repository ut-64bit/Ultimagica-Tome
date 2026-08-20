#> player_manager:loadout/skill/conflict/check
#
# temp.conflict.candidateと現在有効なスキルの競合を双方向に確認する。
# @output score #SkillConflict _: 競合あり=1、なし=0

scoreboard players set #SkillConflict _ 0
data remove storage player_manager:loadout temp.conflict.active
data remove storage player_manager:loadout temp.conflict.active_name
data remove storage player_manager:loadout temp.conflict.current
data remove storage player_manager:loadout temp.conflict.queue
execute unless data storage player_manager:loadout temp.conflict.candidate.id run return 0

data modify storage player_manager:loadout temp.conflict.queue set from storage player:context this.ActiveSkills
function player_manager:loadout/skill/conflict/next
data remove storage player_manager:loadout temp.conflict.current
data remove storage player_manager:loadout temp.conflict.queue
return run scoreboard players get #SkillConflict _
