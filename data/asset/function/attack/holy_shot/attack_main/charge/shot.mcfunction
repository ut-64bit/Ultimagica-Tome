#> asset:attack/holy_shot/attack_main/charge/shot
#

# 発射する
	function api:clear_in
	data modify storage api: in.FieldOverride.AttackData append from storage asset:context this.AttackData
	function api:object/summon.m {ID:"proj.holy_shot"}

# 演出
	playsound item.firecharge.use player @a ~ ~ ~ 0.4 1.3
