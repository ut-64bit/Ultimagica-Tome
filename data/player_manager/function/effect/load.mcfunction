#> player_manager:effect/load
#
# カスタムエフェクト定義を登録する。
# 定義を追加するときは asset:effect/load と同名のcallback一式を更新する。

data modify storage effect:registry Definitions set value []
function asset:effect/load

# /reload 前の途中コンテキストを残さない。
data remove storage effect:runtime
data remove storage effect:context
