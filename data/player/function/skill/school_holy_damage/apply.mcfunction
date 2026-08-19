#> player:skill/school_holy_damage/apply

data modify storage player:context this.Stats.DamageDealtModifiers append value {Match:{School:"holy"},Multiplier:1150}
