#> asset:attack/wind_arrow/attack_main/charge/create_attack_data
#

data modify storage api: in set value { Damage:5, MaxHit:2 }
function api:damage/create_attack_data
data modify storage asset:context this.AttackData set from storage api: out.AttackData
