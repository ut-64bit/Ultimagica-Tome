#> player_manager:loadout/preset/share/details

# クラス
execute if data storage player_manager:loadout temp.preset.current.Loadout{Class:""} run tellraw @a [{"text":"  クラス: ","color":"gray"},{"text":"未設定","color":"dark_gray"}]
execute unless data storage player_manager:loadout temp.preset.current.Loadout{Class:""} run function player_manager:loadout/preset/share/class.m with storage player_manager:loadout temp.preset.current.Loadout

# 魔法
tellraw @a {"text":"  魔法","color":"aqua"}
data modify storage player_manager:loadout temp.preset.share.queue set from storage player_manager:loadout temp.preset.current.Loadout.Magic
execute unless data storage player_manager:loadout temp.preset.share.queue[0] run tellraw @a {"text":"    なし","color":"dark_gray"}
function player_manager:loadout/preset/share/magic_next

# 選択スキル
tellraw @a {"text":"  選択スキル","color":"light_purple"}
data modify storage player_manager:loadout temp.preset.share.queue set from storage player_manager:loadout temp.preset.current.Loadout.Skills
execute unless data storage player_manager:loadout temp.preset.share.queue[0] run tellraw @a {"text":"    なし","color":"dark_gray"}
function player_manager:loadout/preset/share/skill_next

data remove storage player_manager:loadout temp.preset.share
