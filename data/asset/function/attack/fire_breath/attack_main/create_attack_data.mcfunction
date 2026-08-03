#> asset:attack/fire_breath/attack_main/create_attack_data
#

data modify storage api: in set value { Damage:3, Attribute:{ Unblockable:true }}
function api:damage/create_attack_data
data modify storage asset:context this.AttackData set from storage api: out.AttackData
