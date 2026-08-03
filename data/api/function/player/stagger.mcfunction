#> api:player/stagger
#
# 指定したtick数だけプレイヤーを怯ませる
# 引数: {duration:tick数}
#

$function api:player/fsm/request_with {state:"stagger",data:{Duration:$(duration)}}
