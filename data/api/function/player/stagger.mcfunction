#> api:player/stagger
#
# 指定したtick数だけプレイヤーを怯ませる
# 引数: {duration:tick数}
#

execute unless entity @s[type=player] run return fail
$function api:player/fsm/request_with {state:"stagger",data:{Duration:$(duration)}}
