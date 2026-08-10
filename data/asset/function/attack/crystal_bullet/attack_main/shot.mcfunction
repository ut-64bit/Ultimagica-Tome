#> asset:attack/crystal_bullet/attack_main/shot
#

# 発射する
	function api:clear_in
	data modify storage api: in.FieldOverride.TargetID set from storage player:context this.StateMachine.state_data.Field.TargetID
	function api:object/summon.m {ID:"proj.crystal_bullet"}

# 演出
	playsound minecraft:entity.evoker.prepare_summon player @a ~ ~ ~ 1 1.8
	# function api:object/summon.m {ID:"particle.magic_crystal"}

# MP消費
	data modify storage api: in.Amount set value 2
	function api:player/stamina/consume
