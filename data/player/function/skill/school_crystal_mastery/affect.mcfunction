#> player:skill/school_crystal_mastery/affect

execute if data storage asset:context this.Range store result storage asset:context this.Range int 1.5 run data get storage asset:context this.Range
execute if data storage asset:context this.Range run data modify storage asset:context this.RemainingRange set from storage asset:context this.Range
execute if data storage asset:context this.Duration store result storage asset:context this.Duration int 1.5 run data get storage asset:context this.Duration
