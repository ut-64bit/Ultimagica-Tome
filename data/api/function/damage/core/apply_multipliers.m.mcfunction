#> api:damage/core/apply_multipliers.m
#
# 基礎ダメージへ、攻撃者の与ダメージ倍率と被害者の被ダメージ倍率を適用する。
# macro: {Element:string}

execute store result score #DamageValue _ run data get storage api:temp DamageInfo.Damage 1000
scoreboard players set #DamageDealtMultiplier _ 1000
scoreboard players set #DamageTakenMultiplier _ 1000

$execute if entity @n[type=player,tag=_owner,distance=..1000] run scoreboard players operation #DamageDealtMultiplier _ = @n[type=player,tag=_owner,distance=..1000] DamageDealt.$(Element)
$execute if entity @s[type=player] run scoreboard players operation #DamageTakenMultiplier _ = @s DamageTaken.$(Element)

# 負の倍率は0倍として扱う。
execute if score #DamageDealtMultiplier _ matches ..-1 run scoreboard players set #DamageDealtMultiplier _ 0
execute if score #DamageTakenMultiplier _ matches ..-1 run scoreboard players set #DamageTakenMultiplier _ 0

scoreboard players operation #DamageValue _ *= #DamageDealtMultiplier _
scoreboard players operation #DamageValue _ /= #c_1000 const
scoreboard players operation #DamageValue _ *= #DamageTakenMultiplier _
scoreboard players operation #DamageValue _ /= #c_1000 const

# クラス・スキルが追加した、魔法・系統・タグ単位の倍率を順番に適用する。
execute if entity @n[type=player,tag=_owner,distance=..1000] as @n[type=player,tag=_owner,distance=..1000] run function api:damage/core/modifiers/load_dealt
execute if entity @s[type=player] run function api:damage/core/modifiers/load_taken

execute store result storage api:temp DamageInfo.Damage double 0.001 run scoreboard players get #DamageValue _
