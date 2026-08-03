#> asset:object/abstract.physical_projectile/init/set_velocity.m
#

$execute positioned 0.0 0.0 0.0 rotated as @s run tp 0-0-0-0-0 ^ ^ ^$(Speed)
data modify storage asset:temp Velocity set from entity 0-0-0-0-0 Pos

data modify storage asset:context this.Velocity.X set from storage asset:temp Velocity[0]
data modify storage asset:context this.Velocity.Y set from storage asset:temp Velocity[1]
data modify storage asset:context this.Velocity.Z set from storage asset:temp Velocity[2]

# あとしまつ
	tp 0-0-0-0-0 0.0 0.0 0.0
	data remove storage asset:temp Velocity
