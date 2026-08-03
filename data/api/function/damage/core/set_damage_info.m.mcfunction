#> api:damage/core/set_damage_info.m
#

execute unless data storage api:temp DamageInfo run data modify storage api:temp DamageInfo set from storage api: in.AttackData
data modify storage api:temp DamageInfo.ttl set value 100

execute if data storage api: in.AttackData{ID:"null"} run return fail

data modify storage api:temp DamageInfo.MaxHitCount set from storage api: in.AttackData.MaxHitCount
execute unless data storage api:temp DamageInfo.RemainingHitCount run data modify storage api:temp DamageInfo.RemainingHitCount set from storage api: in.AttackData.MaxHitCount
execute store result storage api:temp DamageInfo.RemainingHitCount int 0.9999999999 run data get storage api:temp DamageInfo.RemainingHitCount

$data remove storage damage: ReceivedDamage[{VictimUUID:$(UUID)}].DamageInfo[{ID:$(ID)}]
$data modify storage damage: ReceivedDamage[{VictimUUID:$(UUID)}].DamageInfo append value {}
$data modify storage damage: ReceivedDamage[{VictimUUID:$(UUID)}].DamageInfo[-1] set from storage api:temp DamageInfo
