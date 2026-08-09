#> asset:object/proj.thunder_strike/tick/state_delay/
#

execute store result storage asset:context this.Delay int 0.9999999999 run data get storage asset:context this.Delay
execute if data storage asset:context this{Delay:0} run data modify storage asset:context this.State set value "idle"
