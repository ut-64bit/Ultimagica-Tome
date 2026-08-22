#> asset:object/proj.holy_beam_light_single/tick/state_delay/
#

execute store result storage asset:context this.Delay int 0.9999999999 run data get storage asset:context this.Delay
execute if data storage asset:context this{Delay:0} run data modify storage asset:context this.State set value "idle"

# 演出
execute if data storage asset:context this{Delay:18} run data merge entity @s {transformation:{scale:[0.5f,0.5f,0.5f]},interpolation_duration:2,start_interpolation:0}

execute rotated as @n[tag=_owner,distance=..1000] run rotate @s ~ ~
