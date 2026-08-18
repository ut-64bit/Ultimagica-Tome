#> player_manager:stats/class/apply
#
# クラスが指定した基礎値だけを既定値から上書きする。

execute if data storage player_manager:loadout temp.rebuild.class.stats.damage_dealt.physical store result score @s DamageDealt.physical run data get storage player_manager:loadout temp.rebuild.class.stats.damage_dealt.physical
execute if data storage player_manager:loadout temp.rebuild.class.stats.damage_dealt.magic store result score @s DamageDealt.magic run data get storage player_manager:loadout temp.rebuild.class.stats.damage_dealt.magic
execute if data storage player_manager:loadout temp.rebuild.class.stats.damage_dealt.light store result score @s DamageDealt.light run data get storage player_manager:loadout temp.rebuild.class.stats.damage_dealt.light
execute if data storage player_manager:loadout temp.rebuild.class.stats.damage_dealt.holy store result score @s DamageDealt.holy run data get storage player_manager:loadout temp.rebuild.class.stats.damage_dealt.holy
execute if data storage player_manager:loadout temp.rebuild.class.stats.damage_dealt.fire store result score @s DamageDealt.fire run data get storage player_manager:loadout temp.rebuild.class.stats.damage_dealt.fire
execute if data storage player_manager:loadout temp.rebuild.class.stats.damage_dealt.thunder store result score @s DamageDealt.thunder run data get storage player_manager:loadout temp.rebuild.class.stats.damage_dealt.thunder
execute if data storage player_manager:loadout temp.rebuild.class.stats.damage_dealt.wind store result score @s DamageDealt.wind run data get storage player_manager:loadout temp.rebuild.class.stats.damage_dealt.wind
execute if data storage player_manager:loadout temp.rebuild.class.stats.damage_dealt.water store result score @s DamageDealt.water run data get storage player_manager:loadout temp.rebuild.class.stats.damage_dealt.water

execute if data storage player_manager:loadout temp.rebuild.class.stats.damage_taken.physical store result score @s DamageTaken.physical run data get storage player_manager:loadout temp.rebuild.class.stats.damage_taken.physical
execute if data storage player_manager:loadout temp.rebuild.class.stats.damage_taken.magic store result score @s DamageTaken.magic run data get storage player_manager:loadout temp.rebuild.class.stats.damage_taken.magic
execute if data storage player_manager:loadout temp.rebuild.class.stats.damage_taken.light store result score @s DamageTaken.light run data get storage player_manager:loadout temp.rebuild.class.stats.damage_taken.light
execute if data storage player_manager:loadout temp.rebuild.class.stats.damage_taken.holy store result score @s DamageTaken.holy run data get storage player_manager:loadout temp.rebuild.class.stats.damage_taken.holy
execute if data storage player_manager:loadout temp.rebuild.class.stats.damage_taken.fire store result score @s DamageTaken.fire run data get storage player_manager:loadout temp.rebuild.class.stats.damage_taken.fire
execute if data storage player_manager:loadout temp.rebuild.class.stats.damage_taken.thunder store result score @s DamageTaken.thunder run data get storage player_manager:loadout temp.rebuild.class.stats.damage_taken.thunder
execute if data storage player_manager:loadout temp.rebuild.class.stats.damage_taken.wind store result score @s DamageTaken.wind run data get storage player_manager:loadout temp.rebuild.class.stats.damage_taken.wind
execute if data storage player_manager:loadout temp.rebuild.class.stats.damage_taken.water store result score @s DamageTaken.water run data get storage player_manager:loadout temp.rebuild.class.stats.damage_taken.water

execute if data storage player_manager:loadout temp.rebuild.class.stats.cast_speed store result score @s CastSpeed run data get storage player_manager:loadout temp.rebuild.class.stats.cast_speed
execute if data storage player_manager:loadout temp.rebuild.class.stats.magic_slots store result score @s MagicSlots run data get storage player_manager:loadout temp.rebuild.class.stats.magic_slots
execute if data storage player_manager:loadout temp.rebuild.class.skill_capacity store result score @s SkillCapacity run data get storage player_manager:loadout temp.rebuild.class.skill_capacity

# 不正な負数は使用不能な0として扱う。
execute if score @s MagicSlots matches ..-1 run scoreboard players set @s MagicSlots 0
execute if score @s SkillCapacity matches ..-1 run scoreboard players set @s SkillCapacity 0
