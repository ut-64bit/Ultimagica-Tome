#> player_manager:loadout/load
#
# ロードアウト設定と選択可能な要素を初期化する。

execute unless data storage player_manager:loadout config.magic_limit run data modify storage player_manager:loadout config.magic_limit set value 3

data modify storage player_manager:loadout registry.magic set value [{id:"crystal_bullet"},{id:"crystal_wave"},{id:"fire_ball"},{id:"fire_breath"},{id:"fire_shot"},{id:"holy_bind"},{id:"holy_shot"},{id:"holy_spire"},{id:"holy_spire_wave"},{id:"magic_beam"},{id:"magic_bullet"},{id:"magic_teleport"},{id:"magic_turret"},{id:"thunder_spark"},{id:"thunder_spire"},{id:"thunder_strike"},{id:"water_bullet"},{id:"water_rain"},{id:"water_ray"},{id:"elf_arrow"},{id:"elf_blast"},{id:"elf_jump"},{id:"elf_whirl"}]
data modify storage player_manager:loadout registry.magic append value {id:"fire_wall"}
data modify storage player_manager:loadout registry.magic append value {id:"gravity_bump"}
data modify storage player_manager:loadout registry.magic append value {id:"crystal_shield"}
data modify storage player_manager:loadout registry.magic append value {id:"fire_beam"}
data modify storage player_manager:loadout registry.magic append value {id:"gravity_flying_debris"}

# 個別のクラス・スキル定義はplayer側で管理する。
data modify storage player_manager:loadout registry.class set value []
data modify storage player_manager:loadout registry.skill set value []
function player:class/load
function player:skill/load
