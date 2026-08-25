#> player_manager:effect/definition/get.m
# 引数: {ID:"effect_id"}

data remove storage effect:context Definition
$data modify storage effect:context Definition set from storage effect:registry Definitions[{ID:"$(ID)"}]
