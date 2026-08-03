#> api:registry/reset
#
# レジストリをリセットする
#
# @api

function asset_manager:registry/init
scoreboard players reset #g_AssetAddress Global
scoreboard players reset $Address _
data remove storage registry: update
data remove storage registry: last_id
data remove storage registry: last_address
