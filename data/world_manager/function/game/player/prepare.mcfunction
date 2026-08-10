#> world_manager:game/player/prepare
#
# プレイヤーを初期化する。
function api:player/init

scoreboard players set @s Game.Deaths 0
gamemode adventure @s
