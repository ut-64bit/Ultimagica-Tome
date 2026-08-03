#> asset:object/proj.holy_spire_wave/tick/
#
# Tick処理
#

function asset:object/interface.attackable/get_owner

data modify storage asset:temp StateCpy set from storage asset:context this.State
execute if data storage asset:temp {StateCpy:"delay"} run function asset:object/proj.holy_spire_wave/tick/state_delay/
execute if data storage asset:temp {StateCpy:"idle"} run function asset:object/proj.holy_spire_wave/tick/state_idle/
data remove storage asset:temp StateCpy

execute as @n[tag=_owner,distance=..1000] run tag @s remove _owner
