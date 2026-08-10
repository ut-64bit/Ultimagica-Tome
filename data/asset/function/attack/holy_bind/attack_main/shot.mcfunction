#> asset:attack/holy_bind/attack_main/shot
#

# 発射する
	function api:clear_in
	data modify storage api: in.FieldOverride.TargetID set from storage player:context this.StateMachine.state_data.Field.TargetID
	function api:object/summon.m {ID:"effect.holy_bind"}

# 演出
	playsound t_magic:bind player @a ~ ~ ~ 1 1.0

# MP消費
	data modify storage api: in.Amount set value 5
	function api:player/stamina/consume
