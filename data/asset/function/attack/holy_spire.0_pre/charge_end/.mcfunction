#> asset:attack/holy_spire.0_pre/charge_end/
#

# 通常の発動遷移以外では槍を生成しない
execute unless data storage player:context this.StateMachine._transition{target:"attack_main"} run return 0

# 槍を出す
	function api:clear_in
	execute positioned ~ ~1.3 ~ positioned ^-0.4 ^ ^1.5 run function api:object/summon.m {ID:"proj.holy_spire"}

# 演出
	playsound block.amethyst_block.place player @a ~ ~ ~ 1 1.1

# 後半攻撃へ直接つなぐ
function player_manager:attack/chain {ID:"holy_spire.1_main"}
