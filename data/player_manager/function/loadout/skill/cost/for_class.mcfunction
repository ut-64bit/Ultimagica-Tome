#> player_manager:loadout/skill/cost/for_class
#
# temp.cost.classを候補クラスとして、現在の選択スキルの合計コストを計算する。
# 候補クラスの固有スキルと同じIDはコストに含めない。

scoreboard players set #CandidateSkillCost _ 0
scoreboard players set #CandidateSkillCapacityBonus _ 0
scoreboard players set #CandidateSkillValid _ 1
data modify storage player_manager:loadout temp.cost.queue set from storage player:context this.Loadout.Skills
function player_manager:loadout/skill/cost/next
data remove storage player_manager:loadout temp.cost.queue
data remove storage player_manager:loadout temp.cost.current
