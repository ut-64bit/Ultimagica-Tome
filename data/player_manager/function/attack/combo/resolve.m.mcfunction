#> player_manager:attack/combo/resolve.m
#

$execute unless data storage api: in{ID:"$(InputAttackID)"} run return run function player_manager:attack/combo/clear
$data modify storage api: in.ComboInputAttackID set value "$(InputAttackID)"
$data modify storage api: in.ID set value "$(NextAttackID)"

return 1
