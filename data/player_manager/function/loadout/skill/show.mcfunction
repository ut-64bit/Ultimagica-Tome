#> player_manager:loadout/skill/show
# 現在のクラス・選択スキル・固有スキルをプレイヤーへ表示する。

function player_manager:loadout/ensure
function player_manager:stats/rebuild
execute if data storage player:context this.Loadout{Class:""} run tellraw @s [{"text":"[Loadout] ","color":"light_purple"},{"text":"クラス: 未設定","color":"gray"}]
execute unless data storage player:context this.Loadout{Class:""} run function player_manager:loadout/class/show.m with storage player:context this.Loadout

tellraw @s [{"text":"  選択スキル","color":"light_purple"}]
data modify storage player_manager:loadout temp.show.skill_queue set from storage player:context this.Loadout.Skills
execute unless data storage player_manager:loadout temp.show.skill_queue[0] run tellraw @s [{"text":"    なし","color":"dark_gray"}]
function player_manager:loadout/skill/show/selected_next

tellraw @s [{"text":"  固有スキル","color":"gold"}]
data remove storage player_manager:loadout temp.show.class
execute unless data storage player:context this.Loadout{Class:""} run function player_manager:loadout/skill/show/load_class.m with storage player:context this.Loadout
data modify storage player_manager:loadout temp.show.skill_queue set from storage player_manager:loadout temp.show.class.innate_skills
execute unless data storage player_manager:loadout temp.show.skill_queue[0] run tellraw @s [{"text":"    なし","color":"dark_gray"}]
function player_manager:loadout/skill/show/innate_next
data remove storage player_manager:loadout temp.show
return 1
