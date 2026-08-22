#> player_manager:skill/has.m
# macro: {Skill:string}
#
# player:context this が読み込まれている状態で、指定スキルが現在有効か判定する。
# 選択スキルとクラス固有スキルの両方を含む。

$execute if data storage player:context this.ActiveSkills[{id:"$(Skill)"}] run return 1
return 0
