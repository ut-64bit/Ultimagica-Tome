#> asset:attack/wind_arrow/attack_main/charge/shot
#

# 発射する
	function api:clear_in
	data modify storage api: in.FieldOverride.AttackData append from storage player:context this.StateMachine.state_data.Field.AttackData
	function api:object/summon.m {ID:"proj.wind_arrow"}

# MP消費
	data modify storage api: in.Amount set value 3
	function api:player/stamina/consume

# 演出
	playsound ut_magic:arrow_release player @a ~ ~ ~ 0.6 0.9
