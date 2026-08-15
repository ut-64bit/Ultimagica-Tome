#> asset:object/damage_indicator/init/set_color

execute if data storage asset:context this{Element:"physical"} run return run data modify storage asset:temp init.CustomName[0].color set value "gray"
execute if data storage asset:context this{Element:"magic"} run return run data modify storage asset:temp init.CustomName[0].color set value "light_purple"
execute if data storage asset:context this{Element:"light"} run return run data modify storage asset:temp init.CustomName[0].color set value "white"
execute if data storage asset:context this{Element:"holy"} run return run data modify storage asset:temp init.CustomName[0].color set value "gold"
execute if data storage asset:context this{Element:"fire"} run return run data modify storage asset:temp init.CustomName[0].color set value "red"
execute if data storage asset:context this{Element:"thunder"} run return run data modify storage asset:temp init.CustomName[0].color set value "yellow"
execute if data storage asset:context this{Element:"wind"} run return run data modify storage asset:temp init.CustomName[0].color set value "green"
execute if data storage asset:context this{Element:"water"} run return run data modify storage asset:temp init.CustomName[0].color set value "blue"
