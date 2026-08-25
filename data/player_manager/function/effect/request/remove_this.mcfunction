#> player_manager:effect/request/remove_this
# メソッド実行中のCurrent Effectへ自己解除フラグを設定する。

execute unless data storage effect:runtime {Busy:true} run return 0
execute unless data storage effect:context Current.ID run return 0
data modify storage effect:context Current.Removed set value true
return 1
