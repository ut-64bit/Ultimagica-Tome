#> asset:object/proj.wind_whirl/main/create_attack_data
#

data modify storage api: in set value { Damage:1, Element:"wind" }
function api:damage/create_attack_data
data modify storage asset:context this.AttackData set from storage api: out.AttackData
