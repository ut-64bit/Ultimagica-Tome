#> player_manager:stats/class/load.m
# macro: {Class:string}

$data modify storage player_manager:loadout temp.rebuild.class set from storage player_manager:loadout registry.class[{id:"$(Class)"}]

# 定義から削除されたクラスは未選択に戻す。
execute unless data storage player_manager:loadout temp.rebuild.class run data modify storage player:context this.Loadout.Class set value ""
execute unless data storage player_manager:loadout temp.rebuild.class run data modify storage player:context this.Loadout.Skills set value []
execute unless data storage player_manager:loadout temp.rebuild.class run return 0

function player_manager:stats/class/apply

# 固有スキルは常に適用し、コストには含めない。
data modify storage player_manager:loadout temp.rebuild.queue set from storage player_manager:loadout temp.rebuild.class.innate_skills
function player_manager:stats/skill/apply_innate/next

# 選択スキルをコスト上限まで適用する。固有スキルとの重複は選択側から除く。
data modify storage player_manager:loadout temp.rebuild.queue set from storage player:context this.Loadout.Skills
data modify storage player_manager:loadout temp.rebuild.selected set value []
function player_manager:stats/skill/apply_selected/next
data modify storage player:context this.Loadout.Skills set from storage player_manager:loadout temp.rebuild.selected

return 1
