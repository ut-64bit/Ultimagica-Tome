#> api:damage/core/get_damage_info.m
#

$data modify storage api:temp DamageInfo set from storage damage: ReceivedDamage[{VictimUUID:$(UUID)}].DamageInfo[{ID:$(ID)}]
