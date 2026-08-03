#> player:attack/call_standby_start/
#

# end
	execute if data storage asset:context {OldState:"charge"} run function player:attack/call_charge_end/
	execute if data storage asset:context {OldState:"attack"} run function player:attack/call_attack_end/
	execute if data storage asset:context {OldState:"hold"} run function player:attack/call_hold_end/


function player:attack/call_standby_start/standby_start.m with storage asset:context

data remove storage player:context this.Attack
data remove storage asset:context id
data remove storage asset:context ChargeTime
data remove storage asset:context IsHoldable
data remove storage asset:context this
