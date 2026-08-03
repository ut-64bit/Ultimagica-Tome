#> asset_manager:common/id/pop
# 退避させたIDを戻す

data remove storage asset:context id
data modify storage asset:context id set from storage asset:context IDStashStack[-1].Value
data remove storage asset:context IDStashStack[-1]
