#> player:skill/school_star_damage/apply

data modify storage player:context this.Stats.DamageDealtModifiers append value {Match:{School:"star"},Multiplier:1150}
