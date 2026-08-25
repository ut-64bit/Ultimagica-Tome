#> player_manager:effect/request/finish
#
# 最外周の要求だけが操作キューを実行する。callback内の要求は遅延される。

execute if data storage effect:runtime {Busy:true} run return 1

data modify storage effect:runtime Busy set value true
function player_manager:effect/operation/drain
data remove storage effect:runtime Busy
return 1
