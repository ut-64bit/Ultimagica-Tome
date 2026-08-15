#> player_manager:loadout/load
#
# ロードアウト設定と選択可能な魔法を初期化する。

execute unless data storage player_manager:loadout config.magic_limit run data modify storage player_manager:loadout config.magic_limit set value 3

data modify storage player_manager:loadout registry.magic set value [{id:"crystal_bullet"},{id:"crystal_wave"},{id:"fire_ball"},{id:"fire_breath"},{id:"fire_shot"},{id:"holy_bind"},{id:"holy_shot"},{id:"holy_spire"},{id:"holy_spire_wave"},{id:"magic_beam"},{id:"magic_bullet"},{id:"magic_teleport"},{id:"magic_turret"},{id:"thunder_spark"},{id:"thunder_spire"},{id:"thunder_strike"},{id:"water_bullet"},{id:"water_rain"},{id:"water_ray"},{id:"wind_arrow"},{id:"wind_blast"},{id:"wind_jump"},{id:"wind_whirl"}]
data modify storage player_manager:loadout registry.magic append value {id:"fire_wall"}
data modify storage player_manager:loadout registry.magic append value {id:"gravity_bump"}
