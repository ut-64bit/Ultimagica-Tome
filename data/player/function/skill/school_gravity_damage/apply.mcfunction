#> player:skill/school_gravity_damage/apply

data modify storage player:context this.Stats.DamageDealtModifiers append value {Match:{School:"gravity"},Multiplier:1150}
