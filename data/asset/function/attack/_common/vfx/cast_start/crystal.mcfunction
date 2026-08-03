#> asset:attack/_common/vfx/cast_start/crystal
#

execute anchored eyes positioned ^-0.2 ^-0.1 ^1 run function api:object/summon.m {ID:"particle.magic_crystal"}
playsound entity.evoker.prepare_summon player @a ~ ~ ~ 2 1.8
