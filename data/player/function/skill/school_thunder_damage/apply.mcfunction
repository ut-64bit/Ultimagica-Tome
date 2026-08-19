#> player:skill/school_thunder_damage/apply

data modify storage player:context this.Stats.DamageDealtModifiers append value {Match:{School:"thunder"},Multiplier:1150}
