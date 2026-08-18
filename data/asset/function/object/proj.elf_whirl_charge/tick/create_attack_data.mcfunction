#> asset:object/proj.elf_whirl_charge/tick/create_attack_data
#

data modify storage api: in set value { Damage:1, Element:"wind", School:"elf", Tags:[] }
function api:damage/create_attack_data
data modify storage asset:context this.AttackData set from storage api: out.AttackData
