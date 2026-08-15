#> asset:object/proj.gravity_bump/tick/create_attack_data
#

# AttackDataを生成する
	data modify storage api: in set value { Damage:1, Element:"physical", School:"gravity", Tags:["ground"] }
	function api:damage/create_attack_data
	data modify storage asset:context this.AttackData set from storage api: out.AttackData
