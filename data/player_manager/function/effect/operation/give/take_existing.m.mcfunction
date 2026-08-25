#> player_manager:effect/operation/give/take_existing.m

data remove storage effect:context Current
$data modify storage effect:context Current set from storage player:context this.Effects[{ID:"$(ID)"}]
$data remove storage player:context this.Effects[{ID:"$(ID)"}]
