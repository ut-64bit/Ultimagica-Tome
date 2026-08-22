#> player_manager:skill/has
#
# @input storage api: in.Skill: string
# @within player:context this が読み込まれている処理
#
# 使用例:
# data modify storage api: in.Skill set value "mana_regeneration_cursed"
# execute if function player_manager:skill/has run function player:skill/mana_regeneration_cursed/tick

execute unless entity @s[type=player] run return 0
execute unless data storage player:context this.ActiveSkills run return 0
execute unless data storage api: in.Skill run return 0
return run function player_manager:skill/has.m with storage api: in
