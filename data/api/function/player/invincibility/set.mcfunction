#> api:player/invincibility/set
#
# 指定したtick数だけプレイヤーを無敵にする
# 引数: {duration:正のtick数}
#

execute unless entity @s[type=player] run return fail
$return run function player_manager:invincibility/set {duration:$(duration)}
