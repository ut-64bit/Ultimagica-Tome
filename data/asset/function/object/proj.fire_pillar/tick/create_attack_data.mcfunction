#> asset:object/proj.fire_pillar/tick/create_attack_data
#

# AttackDataを生成する
	data modify storage api: in set value { Damage:3, Element:"fire", School:"fire", Tags:["magecraft"]}
	function api:damage/create_attack_data
	data modify storage asset:context this.AttackData set from storage api: out.AttackData
