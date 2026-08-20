#> asset:attack/holy_shot/attack_main/charge/create_attack_data
#

data modify storage api: in set value { Damage:3, MaxHit:2, Element:"light", School:"holy", Tags:["prayer"] }
function api:damage/create_attack_data
data modify storage player:context this.StateMachine.state_data.Field.AttackData set from storage api: out.AttackData
