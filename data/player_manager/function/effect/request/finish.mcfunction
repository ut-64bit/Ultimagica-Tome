#> player_manager:effect/request/finish
# 外側の要求だけ操作キューを実行し、メソッド内の要求は遅延させる。

execute if data storage effect:runtime {Busy:true} run return 1
data modify storage effect:runtime Busy set value true
function player_manager:effect/operation/drain
data remove storage effect:runtime Busy
return 1
