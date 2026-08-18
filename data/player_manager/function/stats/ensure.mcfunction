#> player_manager:stats/ensure
#
# 未設定の能力値だけを既定値で初期化する。
# ダメージ倍率と詠唱速度は1000を1.0倍として扱う。

execute unless score @s DamageDealt.physical matches -2147483648..2147483647 run scoreboard players set @s DamageDealt.physical 1000
execute unless score @s DamageDealt.magic matches -2147483648..2147483647 run scoreboard players set @s DamageDealt.magic 1000
execute unless score @s DamageDealt.light matches -2147483648..2147483647 run scoreboard players set @s DamageDealt.light 1000
execute unless score @s DamageDealt.holy matches -2147483648..2147483647 run scoreboard players set @s DamageDealt.holy 1000
execute unless score @s DamageDealt.fire matches -2147483648..2147483647 run scoreboard players set @s DamageDealt.fire 1000
execute unless score @s DamageDealt.thunder matches -2147483648..2147483647 run scoreboard players set @s DamageDealt.thunder 1000
execute unless score @s DamageDealt.wind matches -2147483648..2147483647 run scoreboard players set @s DamageDealt.wind 1000
execute unless score @s DamageDealt.water matches -2147483648..2147483647 run scoreboard players set @s DamageDealt.water 1000

execute unless score @s DamageTaken.physical matches -2147483648..2147483647 run scoreboard players set @s DamageTaken.physical 1000
execute unless score @s DamageTaken.magic matches -2147483648..2147483647 run scoreboard players set @s DamageTaken.magic 1000
execute unless score @s DamageTaken.light matches -2147483648..2147483647 run scoreboard players set @s DamageTaken.light 1000
execute unless score @s DamageTaken.holy matches -2147483648..2147483647 run scoreboard players set @s DamageTaken.holy 1000
execute unless score @s DamageTaken.fire matches -2147483648..2147483647 run scoreboard players set @s DamageTaken.fire 1000
execute unless score @s DamageTaken.thunder matches -2147483648..2147483647 run scoreboard players set @s DamageTaken.thunder 1000
execute unless score @s DamageTaken.wind matches -2147483648..2147483647 run scoreboard players set @s DamageTaken.wind 1000
execute unless score @s DamageTaken.water matches -2147483648..2147483647 run scoreboard players set @s DamageTaken.water 1000

execute unless score @s CastSpeed matches -2147483648..2147483647 run scoreboard players set @s CastSpeed 1000
execute unless score @s MagicSlots matches -2147483648..2147483647 store result score @s MagicSlots run data get storage player_manager:loadout config.magic_limit
execute unless score @s SkillCapacity matches -2147483648..2147483647 run scoreboard players set @s SkillCapacity 0
execute unless score @s SkillCost matches -2147483648..2147483647 run scoreboard players set @s SkillCost 0
