#> asset:object/proj.wind_whirl/hit_entity/give_damage
#

function api:damage/give_damage

scoreboard players set $strength hb.Motion 6000
execute if data storage api: out{GiveDamage:true} unless data storage asset:context this{StopMove:true} positioned as @s positioned ^ ^ ^-1.7 facing entity @n[tag=_this,distance=..1000] feet rotated ~ -40 run function #p_motion:looking
execute if data storage api: out{GiveDamage:true} if data storage asset:context this{StopMove:true} positioned as @s facing entity @n[tag=_this,distance=..1000] feet rotated ~ -40 run function #p_motion:looking
