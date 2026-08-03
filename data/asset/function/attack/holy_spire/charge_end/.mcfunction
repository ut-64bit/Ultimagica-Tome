#> asset:attack/holy_spire/charge_end/
#

# 槍を出す
function api:clear_in
execute positioned ~ ~1.3 ~ positioned ^-0.4 ^ ^1.5 run function api:object/summon.m {ID:"proj.holy_spire"}

# 演出
playsound block.amethyst_block.place player @a ~ ~ ~ 1 1.1
