#> asset:attack/_common/vfx/cast_start/saint
#

execute anchored eyes positioned ^-0.2 ^-0.1 ^1 run function api:object/summon.m {ID:"particle.magic_saint"}
playsound entity.evoker.cast_spell player @a ~ ~ ~ 2 1
