#> api:registry/core/allocate.m
# AssetIDにレジストリのアドレスを割り当てる

$execute unless data storage registry: address."$(AssetID)" store result storage registry: address."$(AssetID)" int 1 run scoreboard players add #g_AssetAddress Global 1
$execute store result score $Address _ store result storage registry: last_address int 1 run data get storage registry: address."$(AssetID)"
