#> api:player/invincibility/clear
#
# プレイヤーの無敵状態を解除する
#

execute unless entity @s[type=player] run return fail
return run function player_manager:invincibility/clear
