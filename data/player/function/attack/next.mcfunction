#> player:attack/next
#

data modify storage player:context this.OldAttackState set value "standby"

data modify storage api: in.ID set from storage player:context this.NextAttack
function api:attack/set

data remove storage player:context this.NextAttack
