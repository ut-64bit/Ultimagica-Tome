#> player_manager:stats/reset
#
# クラス・スキルの能力値を再構築する前に使用する。
# ダメージ倍率と詠唱速度は1000を1.0倍として扱う。

scoreboard players set @s DamageDealt.physical 1000
scoreboard players set @s DamageDealt.magic 1000
scoreboard players set @s DamageDealt.light 1000
scoreboard players set @s DamageDealt.holy 1000
scoreboard players set @s DamageDealt.fire 1000
scoreboard players set @s DamageDealt.thunder 1000
scoreboard players set @s DamageDealt.wind 1000
scoreboard players set @s DamageDealt.water 1000

scoreboard players set @s DamageTaken.physical 1000
scoreboard players set @s DamageTaken.magic 1000
scoreboard players set @s DamageTaken.light 1000
scoreboard players set @s DamageTaken.holy 1000
scoreboard players set @s DamageTaken.fire 1000
scoreboard players set @s DamageTaken.thunder 1000
scoreboard players set @s DamageTaken.wind 1000
scoreboard players set @s DamageTaken.water 1000

scoreboard players set @s CastSpeed 1000
execute store result score @s MagicSlots run data get storage player_manager:loadout config.magic_limit
scoreboard players set @s MaxStamina 100000
scoreboard players set @s MaxGuardPower 15000
scoreboard players set @s SkillCapacity 0
scoreboard players set @s SkillCost 0

# player:context this が読み込まれている場合、クラス・スキル由来の条件付き倍率も消去する。
data remove storage player:context this.Stats.DamageDealtModifiers
data remove storage player:context this.Stats.DamageTakenModifiers
data modify storage player:context this.ActiveSkills set value []
data remove storage player_manager:loadout temp.conflict
