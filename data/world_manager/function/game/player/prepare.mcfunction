#> world_manager:game/player/prepare
#

# プレイヤーを初期化する。
function api:player/init

# ロビーで所持していたアイテムを破棄し、今回のロードアウトを付与する。
clear @s
function player_manager:loadout/apply

gamemode adventure @s

# Attribute
	attribute @s camera_distance base set 0
