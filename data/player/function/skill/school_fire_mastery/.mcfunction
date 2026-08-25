#> player:skill/school_fire_mastery/
#
# fire系統の着弾地点から、発射者がスキルを持っている場合だけ残留炎を設置する。

execute if entity @n[tag=Object.skill_fire,distance=..1.5] run return 0
execute unless entity @p[tag=_owner,distance=..1000] run return 0

data modify storage api: in.Skill set value "school_fire_mastery"
execute as @p[tag=_owner,distance=..1000] if function api:player/skill/has run function player:skill/school_fire_mastery/summon
return 1
