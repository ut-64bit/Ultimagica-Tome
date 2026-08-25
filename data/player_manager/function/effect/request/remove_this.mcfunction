#> player_manager:effect/request/remove_this
#
# effect callback内から、現在処理中のエフェクト自身を解除する。

execute unless data storage effect:runtime {Busy:true} run return 0
execute unless data storage effect:context Current.ID run return 0

data modify storage effect:context Current.Removed set value true
return 1
