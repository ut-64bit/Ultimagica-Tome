#> asset:object/proj.elf_whirl_charge/hit_entity/give_damage
#

data modify storage api: in.AttackData set from storage asset:context this.AttackData
function api:damage/give_damage

scoreboard players set $strength hb.Motion 6000
execute if data storage api: out{GiveDamage:true} positioned as @s facing entity @n[tag=_this,distance=..1000] feet rotated ~ 0 run function #p_motion:looking
