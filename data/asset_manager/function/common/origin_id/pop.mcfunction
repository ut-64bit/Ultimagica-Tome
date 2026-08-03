#> asset_manager:common/origin_id/pop
# 退避させたoriginIDを戻す

data remove storage asset:context originID
data modify storage asset:context originID set from storage asset:context OriginIDStashStack[-1].Value
data remove storage asset:context OriginIDStashStack[-1]
