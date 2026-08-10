#> world_manager:game/player/prepare
#
# player:init が利用するプレイヤーコンテキストを用意して安全に初期化する。

function oh_my_dat:please
data modify storage player:context this set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player

function player:init

data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Player set from storage player:context this
data remove storage player:context this

scoreboard players set @s Game.Deaths 0
gamemode adventure @s
