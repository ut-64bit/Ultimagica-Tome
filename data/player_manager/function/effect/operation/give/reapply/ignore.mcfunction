#> player_manager:effect/operation/give/reapply/ignore
# 再付与要求を無視し、既存Effectをそのまま戻す。

data modify storage player:context this.Effects append from storage effect:context Current
