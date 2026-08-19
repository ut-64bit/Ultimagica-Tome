#> player:skill/school_elf_damage/apply

data modify storage player:context this.Stats.DamageDealtModifiers append value {Match:{School:"elf"},Multiplier:1150}
