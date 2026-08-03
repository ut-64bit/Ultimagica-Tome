#> asset:attack/_common/vfx/cast_start/wind
#

execute anchored eyes positioned ^-0.2 ^-0.1 ^1 run function api:object/summon.m {ID:"particle.magic_wind"}
playsound entity.evoker.cast_spell player @a ~ ~ ~ 2 1
