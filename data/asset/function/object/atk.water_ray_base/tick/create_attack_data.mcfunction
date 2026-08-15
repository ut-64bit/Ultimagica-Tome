#> asset:object/atk.water_ray_base/tick/create_attack_data
#

data modify storage api: in set value { Damage:3, Element:"water", School:"water", Tags:[] }
function api:damage/create_attack_data
data modify storage asset:context this.AttackData set from storage api: out.AttackData
