#> asset:object/proj.holy_spire_wave_runner/recursive/place
#

# 設置する
	function api:clear_in
	data modify storage api: in.FieldOverride.AttackData set from storage asset:context this.AttackData
	function api:object/summon.m {ID:"proj.holy_spire_wave"}

# 演出
	function asset:object/proj.holy_spire_wave_runner/recursive/vfx.m with entity @s
