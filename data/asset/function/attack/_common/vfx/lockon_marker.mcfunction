#> asset:attack/_common/vfx/lockon_marker
#

execute store result score $EntityID lib run data get storage asset:context this.TargetID
function lib:entity_id/attach_tag.m {Tag:"_target"}

execute at @n[tag=_target,distance=..1000] run particle minecraft:trail{color:[0.396078431f,0.505882353f,0.647058824f],target:[0,-1000,0],duration:1} ~ ~1 ~ 0 0 0 0 1 force @s

tag @n[tag=_target,distance=..1000] remove _target
