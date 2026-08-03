#> asset:attack/holy_spire.0_pre/charge_end/
#

# 槍を出す
	function api:clear_in
	execute positioned ~ ~1.3 ~ positioned ^-0.4 ^ ^1.5 run function api:object/summon.m {ID:"proj.holy_spire"}

# 演出
	playsound block.amethyst_block.place player @a ~ ~ ~ 1 1.1

# 通常の発動遷移時だけ、後半攻撃へ直接つなぐ
execute if data storage player:context this.StateMachine._transition{target:"attack_main"} run function player_manager:attack/chain {ID:"holy_spire.1_main"}
