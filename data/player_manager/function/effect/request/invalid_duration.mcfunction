#> player_manager:effect/request/invalid_duration
# 不正なDuration入力を破棄し、付与失敗を返す。

scoreboard players reset #EffectInputDuration _
data modify storage api: out.EffectResult set value false
return 0
