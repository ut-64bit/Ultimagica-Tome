#> asset:attack/fire_breath/attack_main/create_attack_data
#

data modify storage api: in set value { Damage:1.5, Element:"fire", School:"fire", Tags:["magecraft","breath"] }
function api:damage/create_attack_data
data modify storage player:context this.StateMachine.state_data.Field.AttackData set from storage api: out.AttackData
