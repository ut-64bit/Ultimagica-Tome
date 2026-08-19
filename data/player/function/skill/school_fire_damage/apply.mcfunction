#> player:skill/school_fire_damage/apply

data modify storage player:context this.Stats.DamageDealtModifiers append value {Match:{School:"fire"},Multiplier:1150}
