#> api:player/skill/has
#
# 指定スキルが現在有効か判定する。
# 選択スキルとクラス固有スキルの両方を含む。
#
# @input
#	storage api: in.Skill
#	: string
#
# @output
#	return: 1 = 有効、0 = 無効
#
# 使用例:
# data modify storage api: in.Skill set value "mana_regeneration_cursed"
# execute if function api:player/skill/has run say スキルが有効です
#
# @api

execute unless entity @s[type=player] run return 0
execute unless data storage api: in.Skill run return 0

# OhMyDatから読み取り専用でプレイヤーデータを呼び出す。
function player_manager:common/this/stash
function oh_my_dat:please
data modify storage player:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player

execute store result score #SkillHasResult _ run function player_manager:skill/has

function player_manager:common/this/pop
return run scoreboard players get #SkillHasResult _
