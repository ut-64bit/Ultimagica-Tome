#> asset:attack/holy_spire/charge_end/
#

# チャージ成功時だけ槍を出す
execute unless data storage player:context this.StateMachine._transition{target:"attack_hold"} unless data storage player:context this.StateMachine._transition{target:"attack_main"} run return 0

function api:clear_in
execute positioned ~ ~1.3 ~ positioned ^-0.4 ^ ^1.5 run function api:object/summon.m {ID:"proj.holy_spire"}

# 演出
playsound block.amethyst_block.place player @a ~ ~ ~ 1 1.1
